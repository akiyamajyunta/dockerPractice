require 'sinatra'

configure do
    set :bind, '0.0.0.0' #どんな通信でも受け取れるように

end

get '/' do
    'hello world!!' 
end    

puts "go sinatra"