require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative './models/order'

get '/order/form' do
  erb(:order)
end

post '/order' do
  @order = Order.new(params)
  # binding.pry
  @order.save
  erb(:confirm)
end

get '/outstanding_orders' do
  @orders = Order.all()
  erb(:index)
end



