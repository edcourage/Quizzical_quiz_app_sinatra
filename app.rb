require 'data_mapper'
require 'sinatra'

class Quizzical < Sinatra::Base
  get '/' do
    erb :index
  end
end
