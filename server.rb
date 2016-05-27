require 'omniauth-github'
require 'pry'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'dotenv'

Dotenv.load

Dir['app/**/*.rb'].each { |file| require_relative file }
Dir['config/*.rb'].each { |file| require_relative file }
Dir['config/**/*.rb'].each { |file| require_relative file }

# sinatra method that allows methods to be used within templates
helpers do
  def current_user
    user_id = session[:user_id]

    @current_user ||= User.find(user_id) if user_id.present?
  end

  def signed_in?
    current_user.present?
  end
end

def authenticate!
  unless signed_in?
    flash[:notice] = 'You need to sign in to do that'

    redirect '/'
  end
end
