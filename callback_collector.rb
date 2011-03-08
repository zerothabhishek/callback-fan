require 'rubygems'
require 'sinatra'
require 'sequel'

DB = Sequel.connect("sqlite://callback_collector.db")

get '/callback/github' do
  DB[:recieved_codes].insert(:code => params[:code], :datetime => Time.now)
end

