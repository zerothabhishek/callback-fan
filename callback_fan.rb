require 'rubygems'
require 'sinatra'

Url_gh = "http://localhost:3000/callback/gihub"
Url_fb = "http://localhost:3000/callback/facebook"

get '/callback/github' do
  code = params[:code]
  href = "#{Url_gh}?code=#{code}"
  response = "<a href=\"#{href}\">Go</a>"
end

get '/callback/facebook' do
  code = params[:code]
  href = "#{Url_fb}?code=#{code}"
  response = "<a href=\"#{href}\">Go</a>"
end