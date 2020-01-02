require 'data_mapper'
require './db/data_mapper_setup'

class Question
  include DataMapper::Resource

  property :id, Serial
  property :question, Text, :unique => true
  property :answer_1, Text
  property :answer_2, Text
  property :answer_3, Text
  property :answer_4, Text
  property :correct_answer, Text
  property :category, String
end
