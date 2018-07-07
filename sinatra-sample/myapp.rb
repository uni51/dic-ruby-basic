require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :myapp
end

get '/blogs' do
  erb :index
end

get '/contacts' do
  erb :contacts
end

get '/a' do
  erb :a
end

get '/b' do
  erb :b
end

get '/c' do
  erb :b
end

post '/a' do
  @name = params['name']
  @email = params['email']
  @content = params['content']
end


post '/contacts' do
  @name = params['name']
  @email = params['email']
  @content = params['content']
  erb :confirm
end

### ここから課題用ルーティング ###

get '/users' do
  erb :form
end

post '/users/confirm' do
  if
      params['name'].empty? || params['email'].empty? || params['password'].empty?
      if  params['name'].empty?
        @err_name = "お名前が入力されていません"
      end
      if  params['email'].empty?
        @err_email = "メールアドレスが入力されていません"
      end
      if  params['password'].empty?
        @err_password = "パスワードが入力されていません"
      end
      erb :form
    else
      @name = params['name']
      @email = params['email']
      @password = params['password']
      erb :user_confirm
    end
end