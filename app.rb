require 'sinatra/base'

class DailyDiary < Sinatra::Base
  get '/' do
    'Welcome to Daily Diary!'
  end

  run! if app_file == $0
end
