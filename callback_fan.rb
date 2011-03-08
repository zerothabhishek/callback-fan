require 'rubygems'
require 'sinatra'

URL = "http://localhost:3000/callback/gihub"

get '/callback/github' do
  code = params[:code]
  href = "#{URL}?code=#{code}"
  response = "<a href=\"#{href}\">Go</a>"
end

