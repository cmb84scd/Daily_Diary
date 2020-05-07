require 'sinatra/base'
require './lib/diary'

class DailyDiary < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/entries' do
    @entries = Diary.all
    erb(:entries)
  end

  run! if app_file == $0
end
