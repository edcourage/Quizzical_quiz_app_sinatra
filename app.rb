require 'data_mapper'
require 'sinatra'
require './db/data_mapper_setup'
require './lib/question'
require './lib/game'

class Quizzical < Sinatra::Base
  enable :sessions

  get '/' do
    Game.remove_instance(session[:game_id])
    erb :index
  end

  get '/questions' do
    session[:game_id] = Game.game_id if session[:game_id].nil?
    # Game.reset(session[:game_id])
    Game.create(session[:game_id]) if Game.instance(session[:game_id]).nil?
    @game = Game.instance(session[:game_id])
    @question = Game.instance(session[:game_id]).new_question
    erb :questions
  end

  post '/questions' do
    @game = Game.instance(session[:game_id])
    p params
    if params[:selected_answer] == params[:correct_answer]
      @result = "Correct!"
      @game.question_number += 1
      redirect '/result' if Game.instance(session[:game_id]).question_number > 10
    elsif params[:selected_answer] == "Pass"
      @game.passes_remaining -= 1
    else
      @result = "Wrong! Should have been #{ params[:correct_answer] }"
      @game.question_number = 1
      @game.lives_remaining -= 1
      redirect '/game-over' if @game.lives_remaining == 0
    end
    redirect "/questions?result=#{@result}"
  end

  get '/result' do
    Game.remove_instance(session[:game_id])
    erb :result
  end

  get '/game-over' do
    Game.remove_instance(session[:game_id])
    erb :game_over
  end
end
