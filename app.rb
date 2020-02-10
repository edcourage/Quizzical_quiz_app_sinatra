require 'data_mapper'
require 'sinatra'
require './db/data_mapper_setup'
require './lib/question'
require './lib/game'

class Quizzical < Sinatra::Base
  enable :sessions

  get '/' do
    Game.reset(session[:game_id])
    erb :index
  end

  get '/questions' do
    session[:game_id] = Game.game_id if session[:game_id].nil?
    Game.create(session[:game_id]) if Game.instance(session[:game_id]).nil?
    @game_id = session[:game_id]
    @question = Game.instance(session[:game_id]).new_question
    erb :questions
  end

  post '/questions' do
    if params[:selected_answer] == params[:correct_answer]
      @result = "Correct!"
      Game.instance(session[:game_id]).question_number += 1
      redirect '/result' if Game.instance(session[:game_id]).question_number > 10
    elsif params[:selected_answer] == "Pass"
      Game.instance(session[:game_id]).passes_remaining -= 1
    else
      @result = "Wrong! Should have been #{ params[:correct_answer] }"
      Game.instance(session[:game_id]).question_number = 1
      Game.instance(session[:game_id]).lives_remaining -= 1
      redirect '/game-over' if Game.instance(session[:game_id]).lives_remaining == 0
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
