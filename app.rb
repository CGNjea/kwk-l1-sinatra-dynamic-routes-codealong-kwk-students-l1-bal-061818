require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @number1 = params[:number1]
  @number2 = params[:number2]
  
  if @operation == "add"
    @number1 + @number2
  elsif @operation == "subtract"
    @number1 - @number2
  elsif @operation == "multiply"
    @number1 * @number2
  else 
    @number1 / @number2
  end 
end
