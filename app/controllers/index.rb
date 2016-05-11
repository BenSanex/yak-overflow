get '/' do
  @user = User.find_by(id: session[:user_id])
  erb :index
end
