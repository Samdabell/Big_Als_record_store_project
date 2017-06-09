require_relative ('../models/album')
require_relative ('../models/artist')

artist1 = Artist.new({
  'name' => 'Explosions in the Sky'
  })

artist1.save()

artist2 = Artist.new({
  'name' => 'Radiohead'
  })

artist2.save()

artist3 = Artist.new({
  'name' => 'HEALTH'
  })

artist3.save()

album1 = Album.new({
  'title' => 'How Strange, Innocence',
  'artist_id' => artist1.id,
  'stock' => 5
  })

album1.save()

album2 = Album.new({
  'title' => 'Those Who Tell the Truth Shall Die, Those Who Tell the Truth Shall Live Forever',
  'artist_id' => artist1.id,
  'stock' => 7
  })

album2.save()

album3 = Album.new({
  'title' => 'The Earth is Not a Cold Dead Place',
  'artist_id' => artist1.id,
  'stock' => 16
  })

album3.save()

album4 = Album.new({
  'title' => 'The Rescue',
  'artist_id' => artist1.id,
  'stock' => 2
  })

album4.save()

album5 = Album.new({
  'title' => 'All of a Sudden I Miss Everyone',
  'artist_id' => artist1.id,
  'stock' => 12
  })

album5.save()

album6 = Album.new({
  'title' => 'Take Care, Take Care, Take Care',
  'artist_id' => artist1.id,
  'stock' => 10
  })

album6.save()

album7 = Album.new({
  'title' => 'The Wilderness',
  'artist_id' => artist1.id,
  'stock' => 20
  })

album7.save()

album8 = Album.new({
  'title' => 'Pablo Honey',
  'artist_id' => artist2.id,
  'stock' => 3
  })

album8.save()

album9 = Album.new({
  'title' => 'The Bends',
  'artist_id' => artist2.id,
  'stock' => 8
  })

album9.save()

album10 = Album.new({
  'title' => 'OK Computer',
  'artist_id' => artist2.id,
  'stock' => 18
  })

album10.save()

album11 = Album.new({
  'title' => 'Kid A',
  'artist_id' => artist2.id,
  'stock' => 17
  })

album11.save()

album12 = Album.new({
  'title' => 'Amnesiac',
  'artist_id' => artist2.id,
  'stock' => 6
  })

album12.save()

album13 = Album.new({
  'title' => 'Hail to the Thief',
  'artist_id' => artist2.id,
  'stock' => 10
  })

album13.save()

album14 = Album.new({
  'title' => 'In Rainbows',
  'artist_id' => artist2.id,
  'stock' => 16
  })

album14.save()

album15 = Album.new({
  'title' => 'The King of Limbs',
  'artist_id' => artist2.id,
  'stock' => 6
  })

album15.save()

album16 = Album.new({
  'title' => 'A Moon Shaped Pool',
  'artist_id' => artist2.id,
  'stock' => 3
  })

album16.save()

album17 = Album.new({
  'title' => 'HEALTH',
  'artist_id' => artist3.id,
  'stock' => 1
  })

album17.save()

album18 = Album.new({
  'title' => 'GET COLOR',
  'artist_id' => artist3.id,
  'stock' => 4
  })

album18.save()

album19 = Album.new({
  'title' => 'DEATH MAGIC',
  'artist_id' => artist3.id,
  'stock' => 8
  })

album19.save()