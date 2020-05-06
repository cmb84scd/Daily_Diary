require 'sinatra/base'

class DailyDiary < Sinatra::Base
  get '/' do
    'Welcome to your diary!'
  end

  run! if app_file == $0
end
