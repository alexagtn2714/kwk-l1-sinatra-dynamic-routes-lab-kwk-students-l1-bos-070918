require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
  @name = params[:name]
  @reversed_string = @name.reverse 
  
  "Your reversed string is #{@reversed_string}"
  end 
  
  get '/square/:number' do
    @number = params[:number].to_i
    @squared_number = @number * @number
    
  "Your squared number is #{@squared_number}."
  end 
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @sentence = @phrase * @number 
    
  "#{@sentence}."
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @words = @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5
    
    "#{@words}."
  end 
  
  get '/:operation/:number1/:number2' do 
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "*"
      @answer = @number1 * @number2 
    elsif @operation == "+"
      @answer = @number1 + @number2
    elsif @operation == "-"
      @answer = @number2 - @number1
    # elsif @operation == "/"
      # @answer = @number1 / @number2
   end
    "The answer is #{@answer}."
  end 
end
