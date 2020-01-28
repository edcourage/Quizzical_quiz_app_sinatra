require 'data_mapper'
require 'sinatra'
require './db/data_mapper_setup'
require './lib/question'
require './lib/game'

class Quizzical < Sinatra::Base
  enable :sessions

  get '/' do
    Game.create
    erb :index
  end

  get '/questions' do
    @question = Game.instance.new_question
    erb :questions
  end

  post '/questions' do
    if params[:selected_answer] == params[:correct_answer]
      @result = "Correct!"
    else
      @result = "Wrong! Should have been #{ params[:correct_answer] }"
    end
    redirect "/questions?result=#{@result}"
  end
end
