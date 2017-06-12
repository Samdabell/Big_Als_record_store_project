require 'minitest/autorun'
require 'minitest/rg'
require_relative '../album'

class TestAlbum < MiniTest::Test

  def setup
    @album1 = Album.new({
      'title' => 'LCD Soundsystem',
      'artist_id' => 1,
      'stock' => 2,
      'genre' => 'Alternative Dance',
      'year' => 2005,
      'buy_price' => 4,
      'sell_price' => 7,
      'artwork' => 'https://upload.wikimedia.org/wikipedia/en/7/74/Afc_lcd_LCDSoundsystem.gif'
    })

    @album2 = Album.new({
      'title' => 'Sound of Silver',
      'artist_id' => 1,
      'stock' => 7,
      'genre' => 'Alternative Dance',
      'year' => 2007,
      'buy_price' => 4,
      'sell_price' => 7,
      'artwork' => 'https://upload.wikimedia.org/wikipedia/en/f/ff/LCD_Soundsystem_-_Sound_of_Silver.jpg'
    })

    @album3 = Album.new({
      'title' => 'This is Happening',
      'artist_id' => 1,
      'stock' => 18,
      'genre' => 'Alternative Dance',
      'year' => 2010,
      'buy_price' => 4,
      'sell_price' => 7,
      'artwork' => 'https://upload.wikimedia.org/wikipedia/en/7/7e/Lcdthisishappening.jpg'
    })    
  end

  def test_low_stock
    assert_equal('Low', @album1.stock_check)
  end

  def test_medium_stock
    assert_equal('Medium', @album2.stock_check)
  end

  def test_high_stock
    assert_equal('High', @album3.stock_check)
  end

  def test_markup
    assert_equal(3, @album1.markup)
  end


end