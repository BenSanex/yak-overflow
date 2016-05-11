get '/questions' do
 erb :index
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :'questions/show'
end

get '/questions/new' do
  erb :'questions/new'
end

post '/questions' do
  redirect "questions/#{question_id}"
end
