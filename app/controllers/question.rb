get '/questions' do
 erb :'questions/show'
end

get '/questions/new' do
  authenticate!
  erb :'questions/new'
end

post '/questions' do
  authenticate!
  @question = Question.new(params[:question])
  @question.asker_id = session[:user_id]
  @question.save!
  redirect "questions/#{@question.id}"
end

get '/questions/:id' do
  # @user = User.find(session[:user_id])
  @question = Question.find(params[:id])
  erb :'questions/show'
end
