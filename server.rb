require 'sinatra'

require_relative 'config/application'

Dir['app/**/*.rb'].each { |file| require_relative file }
