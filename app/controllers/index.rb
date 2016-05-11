get '/' do
  @user = User.find_by(id: session[:user_id])
  @questions = Question.all
  erb :index
end
