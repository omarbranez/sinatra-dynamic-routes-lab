require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
    # apparently you dont need to interpolate and wrap in quotes
    # or something like
    # @name = params[:name]
    # "#{@name.reverse}"
  end

  get '/square/:number' do
    "#{(params[:number].to_i)**2}"
    # or just return the to_s without the quotes and interpolation
    # or probably something like
    # @number = params[:number].to_i
    # "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    answer = []
    (params[:number].to_i).times do
      answer << params[:phrase]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'add'
      "#{(params[:number1].to_i) + (params[:number2].to_i)}"
    when 'subtract'
      "#{(params[:number1].to_i) - (params[:number2].to_i)}"
    when 'multiply'
      "#{(params[:number1].to_i) * (params[:number2].to_i)}"
    when 'divide'
      "#{(params[:number1].to_i) / (params[:number2].to_i)}"
    else "Invalid operation"
    end
  end  

end