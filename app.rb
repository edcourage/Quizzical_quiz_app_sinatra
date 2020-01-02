require 'data_mapper'
require 'sinatra'
require './db/data_mapper_setup'
require './lib/question'

class Quizzical < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/questions' do
    @question = Question.random_question

    erb :questions
  end
end
