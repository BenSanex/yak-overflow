get '/answer/:id/comment/new' do
  authenticate!
  @type = 'answer'
  @id = params[:id]
  erb :'comments/new'
end

post '/answer/:id/comment' do
  authenticate!
  Comment.create(commentable_id: params[:id], commentable_type: :Answer, commenter_id: session[:user_id], text: params[:text])
  redirect "/questions/#{params[:id]}"
end

get '/question/:id/comment/new' do
  authenticate!
  @type = 'question'
  @id = params[:id]
  erb :'comments/new'
end

post '/question/:id/comment' do
  authenticate!
  Comment.create(commentable_id: params[:id], commentable_type: :Question, commenter_id: session[:user_id], text: params[:text])
  redirect "/questions/#{params[:id]}"
end
