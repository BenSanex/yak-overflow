get '/answer/:id/upvote' do
  Vote.create(votable_id: params[:id], votable_type: :Answer, voter_id: session[:user_id], direction: :up)
  redirect "/questions/#{params[:id]}"
end

get '/answer/:id/downvote' do
  Vote.create(votable_id: params[:id], votable_type: :Answer, voter_id: session[:user_id], direction: :down)
  redirect "/questions/#{params[:id]}"
end

get '/question/:id/upvote' do
  Vote.create(votable_id: params[:id], votable_type: :Question, voter_id: session[:user_id], direction: :up)
  redirect "/questions/#{params[:id]}"
end

get '/question/:id/downvote' do
  Vote.create(votable_id: params[:id], votable_type: :Question, voter_id: session[:user_id], direction: :down)
  redirect "/questions/#{params[:id]}"
end
