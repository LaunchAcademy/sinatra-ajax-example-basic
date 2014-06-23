require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/json'

get '/' do
  erb :index
end

get '/tweets' do
  # Create a hash that represents some tweets
  # This could also be a bunch of Active Record objects.
  tweets = [
    { username: 'HeroicEric', body: "Welcome to the world of AJAX!" },
    { username: 'atsheehan', body: "Has anybody seen my beard?" },
    { username: 'faizAAnTheWizard', body: "Eye of rabbit, harp string hum, turn this water into rum." },
    { username: 'helenhood', body: "Today's lunch: vegetables!" },
    { username: 'radavis', body: "I've never seen a... pilgrim... who could use a staff the way you did." }
  ]

  # Respond to the request by converting the tweets hash to json.
  # This would work with any object that can be converted to json.
  json tweets
end
