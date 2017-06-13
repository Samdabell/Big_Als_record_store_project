require_relative ('../models/album')
require_relative ('../models/artist')

artist1 = Artist.new({
  'name' => 'Explosions in the Sky',
  'spotify' => '<iframe src="https://open.spotify.com/embed/artist/1uQWmt1OhuHGRKmZ2ZcL6p" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

artist1.save()

artist2 = Artist.new({
  'name' => 'Radiohead',
  'spotify' => '<iframe src="https://open.spotify.com/embed/artist/4Z8W4fKeB5YxbusRsdQVPb" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

artist2.save()

artist3 = Artist.new({
  'name' => 'HEALTH',
  'spotify' => '<iframe src="https://open.spotify.com/embed/artist/6FfjnGXMhxSsJTuGLWBDth" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

artist3.save()

album1 = Album.new({
  'title' => 'How Strange, Innocence',
  'artist_id' => artist1.id,
  'stock' => 5,
  'genre' => 'Post-rock',
  'year' => 2000,
  'buy_price' => 4,
  'sell_price' => 7,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/8/89/How_strange%2C_innocence_re-release_cover.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/1goXTgNS1FnB8tzwLG2tBM" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album1.save()

album2 = Album.new({
  'title' => 'Those Who Tell the Truth Shall Die, Those Who Tell the Truth Shall Live Forever',
  'artist_id' => artist1.id,
  'stock' => 7,
  'genre' => 'Post-rock',
  'year' => 2001,
  'buy_price' => 4,
  'sell_price' => 7,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/f/f4/Those_who_tell_the_truth_shall_die.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/0HxOFNk6NIHydHAer8y01M" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album2.save()

album3 = Album.new({
  'title' => 'The Earth is Not a Cold Dead Place',
  'artist_id' => artist1.id,
  'stock' => 16,
  'genre' => 'Post-rock',
  'year' => 2003,
  'buy_price' => 4,
  'sell_price' => 7,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/f/f9/The_earth_is_not_a_cold_dead_place.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/2UvgHoF8RAxomkWHGVpiqF" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album3.save()

album4 = Album.new({
  'title' => 'The Rescue',
  'artist_id' => artist1.id,
  'stock' => 2,
  'genre' => 'Post-rock',
  'year' => 2005,
  'buy_price' => 10,
  'sell_price' => 20,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/f/fa/Eitsrescuealbum.jpg',
  'spotify' => ' '
  })

album4.save()

album5 = Album.new({
  'title' => 'All of a Sudden I Miss Everyone',
  'artist_id' => artist1.id,
  'stock' => 12,
  'genre' => 'Post-rock',
  'year' => 2007,
  'buy_price' => 4,
  'sell_price' => 7,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/b/bd/AllofaSudden.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/1hXFXoYkWp7Jbzc2nwhvub" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album5.save()

album6 = Album.new({
  'title' => 'Take Care, Take Care, Take Care',
  'artist_id' => artist1.id,
  'stock' => 10,
  'genre' => 'Post-rock',
  'year' => 2011,
  'buy_price' => 4,
  'sell_price' => 7,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/b/b0/Takecare.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/15TbDQtgUWm7s5P7dmEZwJ" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album6.save()

album7 = Album.new({
  'title' => 'The Wilderness',
  'artist_id' => artist1.id,
  'stock' => 20,
  'genre' => 'Post-rock',
  'year' => 2016,
  'buy_price' => 6,
  'sell_price' => 10,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/7/7a/The_Wilderness_%28Front_Cover%29.png',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/1DPaBbLMLuhh9iDwtZrmld" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album7.save()

album8 = Album.new({
  'title' => 'Pablo Honey',
  'artist_id' => artist2.id,
  'stock' => 3,
  'genre' => 'Alternative Rock',
  'year' => 1993,
  'buy_price' => 2,
  'sell_price' => 4,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/0/0f/Radiohead.pablohoney.albumart.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/6400dnyeDyD2mIFHfkwHXN" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album8.save()

album9 = Album.new({
  'title' => 'The Bends',
  'artist_id' => artist2.id,
  'stock' => 8,
  'genre' => 'Alternative Rock',
  'year' => 1995,
  'buy_price' => 4,
  'sell_price' => 7,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/8/8b/Radiohead.bends.albumart.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/500FEaUzn8lN9zWFyZG5C2" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album9.save()

album10 = Album.new({
  'title' => 'OK Computer',
  'artist_id' => artist2.id,
  'stock' => 18,
  'genre' => 'Alternative Rock',
  'year' => 1997,
  'buy_price' => 6,
  'sell_price' => 10,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/a/a1/Radiohead.okcomputer.albumart.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/7dxKtc08dYeRVHt3p9CZJn" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album10.save()

album11 = Album.new({
  'title' => 'Kid A',
  'artist_id' => artist2.id,
  'stock' => 17,
  'genre' => 'Electronica',
  'year' => 2000,
  'buy_price' => 4,
  'sell_price' => 7,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/b/b5/Radiohead.kida.albumart.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/19RUXBFyM4PpmrLRdtqWbp" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album11.save()

album12 = Album.new({
  'title' => 'Amnesiac',
  'artist_id' => artist2.id,
  'stock' => 6,
  'genre' => 'Electronica',
  'year' => 2001,
  'buy_price' => 4,
  'sell_price' => 7,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/c/c5/Radiohead.amnesiac.albumart.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/6V9YnBmFjWmXCBaUVRCVXP" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album12.save()

album13 = Album.new({
  'title' => 'Hail to the Thief',
  'artist_id' => artist2.id,
  'stock' => 10,
  'genre' => 'Alternative Rock',
  'year' => 2003,
  'buy_price' => 4,
  'sell_price' => 7,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/6/63/Radiohead_-_Hail_to_the_Thief_-_album_cover.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/1oW3v5Har9mvXnGk0x4fHm" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album13.save()

album14 = Album.new({
  'title' => 'In Rainbows',
  'artist_id' => artist2.id,
  'stock' => 16,
  'genre' => 'Alternative Rock',
  'year' => 2007,
  'buy_price' => 4,
  'sell_price' => 7,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/2/2e/In_Rainbows_Official_Cover.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/7eyQXxuf2nGj9d2367Gi5f" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album14.save()

album15 = Album.new({
  'title' => 'The King of Limbs',
  'artist_id' => artist2.id,
  'stock' => 6,
  'genre' => 'Experimental Rock',
  'year' => 2011,
  'buy_price' => 4,
  'sell_price' => 7,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/2/24/The_king_of_limbs.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/1DBkJIEoeHrTX4WCBQGcCi" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album15.save()

album16 = Album.new({
  'title' => 'A Moon Shaped Pool',
  'artist_id' => artist2.id,
  'stock' => 3,
  'genre' => 'Art Rock',
  'year' => 2016,
  'buy_price' => 6,
  'sell_price' => 10,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/c/c1/A_Moon_Shaped_Pool.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/6vuykQgDLUCiZ7YggIpLM9" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album16.save()

album17 = Album.new({
  'title' => 'HEALTH',
  'artist_id' => artist3.id,
  'stock' => 1,
  'genre' => 'Noise Rock',
  'year' => 2007,
  'buy_price' => 3,
  'sell_price' => 7,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/7/70/HEALTH_-_Health_2007_Album_Art.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/6wXQmceVln9dTQIWkV0VdJ" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album17.save()

album18 = Album.new({
  'title' => 'GET COLOR',
  'artist_id' => artist3.id,
  'stock' => 4,
  'genre' => 'Noise Rock',
  'year' => 2009,
  'buy_price' => 3,
  'sell_price' => 7,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/4/46/GetColorAlbumCover.jpg',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/3Pfs9zQdioNIFuYrgSTZLC" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album18.save()

album19 = Album.new({
  'title' => 'DEATH MAGIC',
  'artist_id' => artist3.id,
  'stock' => 8,
  'genre' => 'Noise Rock',
  'year' => 2015,
  'buy_price' => 5,
  'sell_price' => 10,
  'artwork' => 'https://upload.wikimedia.org/wikipedia/en/5/5d/HEALTH_-_Death_Magic.png',
  'spotify' => '<iframe src="https://open.spotify.com/embed/album/0fXkzTlbfDVSDSXpCSnqLN" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>'
  })

album19.save()