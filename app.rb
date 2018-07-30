require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
   get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}!"
   end
   
   get '/square/:number' do
    @number = params[:number].to_i
    "#{@number*@number}"
   end
     
   get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @return = []
    @number.times do
      @return << @phrase
    end
     @return.join
   end
   
   get '/say/:word1/:word2/:word3/:word4/:word5' do 
     @wrd1 = params[:word1]
     @wrd2 = params[:word2]
     @wrd3 = params[:word3]
     @wrd4 = params[:word4]
     @wrd5 = params[:word5]
     "#{@wrd1%@wrd2%@wrd3%@wrd4%@wrd5}".join('')
   end
   
   
end