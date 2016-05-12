# get '/answers/:id/upvote' do
#   Vote.create(votable_id: params[:id], votable_type: :Answer, voter_id: session[:user_id], direction: :up)
#   redirect "/questions/#{params[:id]}"
# end

# get '/answers/:id/downvote' do
#   Vote.create(votable_id: params[:id], votable_type: :Answer, voter_id: session[:user_id], direction: :down)
#   redirect "/questions/#{params[:id]}"
# end

post '/questions/:id/upvote' do
  Vote.create(votable_id: params[:id], votable_type: :Question, voter_id: session[:user_id], direction: :up)
  if request.xhr?
    "this doesn't matter"
  else
    redirect "/questions/#{params[:id]}"
  end
end

post '/questions/:id/downvote' do
  Vote.create(votable_id: params[:id], votable_type: :Question, voter_id: session[:user_id], direction: :down)
  if request.xhr?
   "this doesn't matter"
  else
    redirect "/questions/#{params[:id]}"
  end
end

post '/answers/:id/upvote' do
  Vote.create(votable_id: params[:id], votable_type: :Answer, voter_id: session[:user_id], direction: :up)
  if request.xhr?
    "this doesn't matter"
  else
    redirect "/questions/#{params[:question_id]}"
  end
end

post '/answers/:id/downvote' do
  Vote.create(votable_id: params[:id], votable_type: :Answer, voter_id: session[:user_id], direction: :down)
  if request.xhr?
   "this doesn't matter"
  else
    redirect "/questions/#{params[:question_id]}"
  end
end
