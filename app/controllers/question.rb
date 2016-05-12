get '/questions?' do
  @questions = Question.where("title LIKE ?", "%#{params[:search]}%")
  if @questions.length == 0
    @questions = Question.all
  end
  erb :'questions/index'
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
  @question = Question.find(params[:id])
  erb :'questions/show'
end

get '/questions/:id/edit' do
  @question = Question.find(params[:id])
  erb :'questions/edit'
end

put '/questions/:id' do
  @question = Question.update(params[:id], params[:question])
  @question.save
  redirect "/questions/#{@question.id}"
end

delete '/questions/:id' do
  @question = Question.find(params[:id])
  @question.destroy
  redirect '/questions'
end


