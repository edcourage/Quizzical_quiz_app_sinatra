require 'data_mapper'
require 'sinatra'
require './db/data_mapper_setup'
require './lib/question'
require './lib/game'

class Quizzical < Sinatra::Base
  enable :sessions

  get '/' do
    Game.reset
    erb :index
  end

  get '/questions' do
    Game.create if Game.instance.nil?
    @question = Game.instance.new_question
    erb :questions
  end

  post '/questions' do
    if params[:selected_answer] == params[:correct_answer]
      @result = "Correct!"
      Game.instance.question_number += 1
      redirect '/result' if Game.instance.question_number > 10
    else
      @result = "Wrong! Should have been #{ params[:correct_answer] }"
      Game.instance.question_number = 1
      Game.instance.lives_remaining -= 1
      redirect '/game-over' if Game.instance.lives_remaining == 0
    end
    redirect "/questions?result=#{@result}"
  end

  get '/result' do
    erb :result
  end

  get '/game-over' do
    erb :game_over
  end
end
