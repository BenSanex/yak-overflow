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
