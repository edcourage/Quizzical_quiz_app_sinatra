require 'data_mapper'
require 'sinatra'
require './db/data_mapper_setup'
require './lib/question'
require './lib/game'

class Quizzical < Sinatra::Base
  enable :sessions

  get '/' do
    Game.reset(1)
    erb :index
  end

  get '/questions' do
    Game.create(1) if Game.instance(1).nil?
    @game_id = 1
    @question = Game.instance(1).new_question
    erb :questions
  end

  post '/questions' do
    if params[:selected_answer] == params[:correct_answer]
      @result = "Correct!"
      Game.instance(1).question_number += 1
      redirect '/result' if Game.instance(1).question_number > 10
    elsif params[:selected_answer] == "Pass"
      Game.instance(1).passes_remaining -= 1
    else
      @result = "Wrong! Should have been #{ params[:correct_answer] }"
      Game.instance(1).question_number = 1
      Game.instance(1).lives_remaining -= 1
      redirect '/game-over' if Game.instance(1).lives_remaining == 0
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
