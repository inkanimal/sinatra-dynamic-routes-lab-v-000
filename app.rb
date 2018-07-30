require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
   get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}!"
   end
   
   get "/square/:number" do
    @number = params[:number].to_i.Math.sqrt
    "#{@number}"
   end
   
   get "say/:number/:phrase" do 
     @num = params[:number].to_i 
     @phrase = params[:phrase]
    def repeat(@phrase, c=@num)
     c.times.collect { @phrase }.join(' ')
    end
   
end