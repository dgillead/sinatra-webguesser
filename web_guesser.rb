require 'sinatra'


rand_num = rand(0..100)
get '/' do
  puts rand_num
end
