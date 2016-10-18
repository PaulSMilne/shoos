require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative './models/shoe'

get '/shoe/order' do
  erb(:order)
end

post '/shoe' do
  @shoe = Shoe.new(params)
  # binding.pry
  @shoe.save
  erb(:confirm)
end

get '/shoe' do
  @shoes = Shoe.all()
  erb(:index)
end



