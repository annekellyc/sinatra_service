# encoding: UTF-8
require 'json'
require 'sinatra'
require 'data_mapper'
require 'dm-migrations'

configure :development do
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(
    :default,
    "sqlite3://#{Dir.pwd}/development.db"
  )
end

require './models/init'
require './helpers/init'
require './routes/init'

DataMapper.finalize 