post '/answer' do
  authenticate!

  Answer.create(body: params[:body], question_id: params[:question_id], author_id: session[:user_id])
  redirect "questions/#{params[:question_id]}"
end
