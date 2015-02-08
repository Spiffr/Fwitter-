require './config/environment'
require './app/models/fweet'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
  	#tweet1 = Tweet.new("Michael", "Hello")
  	#tweet2 = Tweet.new("Jovan", "Hey")
  	#tweet3 = Tweet.new("Dylan", "Shut up Jovan")
  	
  	@tweets = Tweet.all_messages 

  	"Welcome to Fwitter"
 	
 	erb :fweets 
		
		
	  end
	post '/tweets' do
	new_tweet = Tweet.new(params[:user],params[:message])
	redirect ('/')
	end

  end
