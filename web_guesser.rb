require 'sinatra'
require 'sinatra/reloader'

RAND_NUM = rand(0..100)

get '/' do
  guess = params['guess']
  message = check_guess(guess)
  erb :index, :locals => { :message => message }
end


def check_guess(guess)
  if params['guess'].to_i > RAND_NUM
    'Too high!'
  elsif params['guess'].to_i < RAND_NUM
    'Too low!'
  elsif params['guess'].to_i > (RAND_NUM + 5)
    'Way too high!'
  elsif params['guess'].to_i < (RAND_NUM - 5)
    'Way too low!'
  else
    "You got it right, the secret number was #{RAND_NUM}!"
  end
end
