require 'data_mapper'
require 'sinatra'
require './db/data_mapper_setup'
require './lib/question'
require './lib/game'

class Quizzical < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/questions' do
    @game = Game.new
    @question = @game.new_question

    session[:correct_answer] = @question.correct_answer
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
