configure do
  set :views, 'app/views'

  enable :sessions

  # @todo move to ENV variable
  set :session_secret, 'secret'
end
