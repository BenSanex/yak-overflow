get 'comments/new' do
  authenticate!

  erb :"comments/new"
end


post 'comments' do
  authenticate!

  redirect "/questions/:id"
end
