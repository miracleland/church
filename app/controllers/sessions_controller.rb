get '/auth/:provider/callback' do
  user = User.from_omniauth(env['omniauth.auth'])

  session[:user_id] = user.id

  flash[:notice] = 'signed in'

  redirect '/'
end

get '/sign_out' do
  session[:user_id] = nil

  flash[:notice] = 'signed out'

  redirect '/'
end
