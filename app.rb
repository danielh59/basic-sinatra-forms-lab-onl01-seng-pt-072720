require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/newteam' do
    @name = params["name"].to_s
    @coach= params["coach"]
    @pg= params["pg"]
    @sg= params["sg"]
    @sf = params["sf"]
    @pf = params["pf"]
    @c= params["c"]
    erb :team
  end

  get '/team' do
  erb :team
  end

end
