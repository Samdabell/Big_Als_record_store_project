require_relative ('../db/sql_runner')
require_relative('./album')

class Artist

  attr_accessor :id, :name, :spotify

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @spotify = options['spotify']
  end

  def albums
    sql = "SELECT * FROM albums WHERE artist_id = #{@id}"
    albums = SqlRunner.run(sql)
    result = albums.map { |album| Album.new(album) }
    return result
  end

  def save()
    sql = "INSERT INTO artists (name, spotify) VALUES ('#{@name}', '#{@spotify}') RETURNING * ;  "
    artist = SqlRunner.run(sql)
    @id = artist[0]['id'].to_i
  end

  def update(options)
    sql = "UPDATE artists SET
    name = '#{options['name']}',
    spotify = '#{options['spotify']}'
    WHERE id = '#{options['id']}' ;"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM artists WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM artists ;"
    artists = SqlRunner.run(sql)
    result = artists.map { |artist| Artist.new(artist)}
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM artists ;"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = #{id} ;"
    artist = SqlRunner.run(sql)
    result = Artist.new(artist.first())
    return result
  end

end