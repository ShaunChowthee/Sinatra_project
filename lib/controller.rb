require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/gossips/new' do
    erb :new_gossip
  end

  post '/gossips/new' do
    puts "Received POST request to /gossips/new"
    Gossip.new("#{params["gossip_author"]}", "#{params["gossip_content"]}").save
    puts "Saved"
    redirect '/'

  end
  
end
