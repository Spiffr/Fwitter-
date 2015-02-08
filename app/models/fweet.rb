  class Tweet
  	attr_accessor :user, :message
  	
  	ALL_MESSAGE = []

  	def initialize(user, message)
  		@user = user
  		@message = message
  		ALL_MESSAGE << self
  	end
  	def self.all_messages
  	 ALL_MESSAGE
  	end

  	#def user
  	  #@user
  	#end
  	

  	#def user=(user)
  	#	@user = user
  	#end
  
  end

 
 