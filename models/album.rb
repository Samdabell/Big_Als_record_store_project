require_relative ('../db/sql_runner')
require_relative ('./artist')

class Album

  attr_accessor :id, :title, :artist_id, :stock, :genre, :year, :buy_price, :sell_price, :artwork, :spotify

  def initialize(options)
    @id = options['id'].to_i
    @title = options['title']
    @artist_id = options['artist_id'].to_i
    @stock = options['stock'].to_i
    @genre = options['genre']
    @year = options['year'].to_i
    @buy_price = options['buy_price'].to_i
    @sell_price = options['sell_price'].to_i
    @artwork = options['artwork']
    @spotify = options['spotify']
  end

  def markup
    return sell_price - buy_price
  end

  def stock_check()
    if @stock >= 15
      return 'High'
    elsif (5..14).include?(@stock)
      return 'Medium'
    elsif @stock < 5
      return 'Low'
    end
  end

  def artist()
    sql = "SELECT * FROM artists WHERE id = #{@artist_id}"
    result = SqlRunner.run(sql)
    artist_hash = result.first()
    artist = Artist.new(artist_hash)
    return artist
  end

  def sanitise(string)
    string.gsub(/'/, "''")
  end

  def save()
    sql = "INSERT INTO albums (title, artist_id, stock, genre, year, buy_price, sell_price, artwork, spotify) VALUES ('#{sanitise(@title)}', '#{@artist_id}', '#{@stock}', '#{sanitise(@genre)}', '#{@year}', '#{@buy_price}', '#{@sell_price}', '#{@artwork}', '#{@spotify}') RETURNING * ;  "
    album = SqlRunner.run(sql)
    @id = album[0]['id'].to_i
  end

  def update(options)
    sql = "UPDATE albums SET
    title = '#{sanitise(options['title'])}', 
    artist_id = '#{options['artist_id']}',
    stock = '#{options['stock']}',
    genre = '#{sanitise(options['genre'])}',
    year = '#{options['year']}',
    buy_price = '#{options['buy_price']}',
    sell_price = '#{options['sell_price']}',
    artwork = '#{options['artwork']}',
    spotify = '#{options['spotify']}'
    WHERE id = '#{options['id']}' ;"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM albums WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM albums ;"
    albums = SqlRunner.run(sql)
    result = albums.map { |album| Album.new(album)}
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM albums ;"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM albums WHERE id = #{id} ;"
    album = SqlRunner.run(sql)
    result = Album.new(album.first())
    return result
  end

end