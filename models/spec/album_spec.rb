require 'minitest/autorun'
require 'minitest/rg'
require_relative '../album'

class TestAlbum < MiniTest::Test

  def setup
    @album1 = Album.new({
      'title' => 'LCD Soundsystem',
      'artist_id' => 1,
      'stock' => 2
    })

    @album2 = Album.new({
      'title' => 'Sound of Silver',
      'artist_id' => 1,
      'stock' => 7
    })

    @album3 = Album.new({
      'title' => 'This is Happening',
      'artist_id' => 1,
      'stock' => 18
    })    
  end

  def test_low_stock
    assert_equal('low', @album1.stock_check)
  end

  def test_medium_stock
    assert_equal('medium', @album2.stock_check)
  end

  def test_high_stock
    assert_equal('high', @album3.stock_check)
  end


end