# get '/users' do
#   # erb :
# end

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  @user.save!
  redirect "/login"
end

get '/users/:id' do
  @user = User.find(params[:id])
  @questions = Question.where(asker_id: params[:id])
  @answers = Answer.where(author_id: params[:id])
  erb :'users/show'
end
