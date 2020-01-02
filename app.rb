require 'data_mapper'
require 'sinatra'

class Quizzical < Sinatra::Base
  get '/' do
    "Quizzical #{ENV['RACK_ENV']}"
  end
end
