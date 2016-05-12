get '/' do
  # @user = User.find(session[:user_id])
  @questions = Question.all
  erb :index
end
