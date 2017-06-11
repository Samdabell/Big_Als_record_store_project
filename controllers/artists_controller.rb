require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album')
require_relative('../models/artist')

get '/artists' do
  @artists = Artist.all
  erb(:"artists/index")
end

get '/artists/new' do
  erb(:"artists/new")
end

get '/artists/:id' do
  @artist = Artist.find(params[:id])
  erb(:"artists/show")
end

get '/artists/:id/edit' do
  @artist = Artist.find(params[:id])
  erb(:"artists/edit")
end

post '/artists' do
  @artist = Artist.new(params)
  @artist.save
  erb(:"artist/create")
end

post '/artists/:id' do
  @artist = Artist.find(params[:id])
  @artist.update
  redirect to "artists/#{params[:id]}"
end

post '/artists/:id/delete' do
  @artist = Artist.find(params[:id])
  @artist.delete()
  redirect to "artists"
end