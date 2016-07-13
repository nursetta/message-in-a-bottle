class Beach < Sinatra::Base
 
 @@clicks = 0


  get '/' do
    erb :index
  end

  get '/beach' do
  	puts location = params['location']
  	@location = params['location']
  	if @location == "east" 
  		@@clicks = @@clicks + 1
  		@beach = "Argh, the Island of Tortuga runs short of turtles."
    	puts @@clicks
    elsif @location == "west"
    	@@clicks = @@clicks + 1
    	@beach = "It's totally awesome to write messages in your used bottles at the end of a spring break rager!"
   		puts @@clicks
      end
	
	if @@clicks === 5
    	@beach = "Ouch! There was a crab in the bottle."
    	@@clicks = 0
	end 
    erb :beach
  end

end