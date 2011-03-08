require 'rubygems'
require 'sinatra'
require 'sequel'

db = Sequel.sqlite("callback_collector.db")
db.create_table :recieved_codes do
    primary_key :id
    String :code
    DateTime :datetime
end
