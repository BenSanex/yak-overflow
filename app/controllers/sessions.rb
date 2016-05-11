get '/login' do
  erb :login
end

# add session
post '/login' do
  if User.authenticate(params[:username], params[:password])
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    redirect "/"
  else
    redirect "/login"
  end
end

# delete session
get '/logout' do
  session.delete(:user_id)
  redirect "/"
end

get '/register' do
  erb :register
end

post '/register' do
  @user = User.new(params[:user])
  @user.save!
  redirect "/login"
end
