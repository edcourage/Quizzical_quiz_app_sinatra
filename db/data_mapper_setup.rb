require 'data_mapper'
require 'dm-postgres-adapter'

#todo - add model files
require_relative '../lib/question'


DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/quizzical_#{ ENV['RACK_ENV'] == nil ? 'development' : ENV['RACK_ENV']}")

#This checks the models for validity and initializes all properties associated with relationships.
DataMapper.finalize

# create tables if they don't exist
DataMapper.auto_upgrade!
