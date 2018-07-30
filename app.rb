require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
   get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}!"
   end
   
   get "/square/:number" do
    @number = params[:number].to_i.Math.sqrt
    "#{@number.to_s}"
   end
   
end