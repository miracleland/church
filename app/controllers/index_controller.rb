get '/' do
  current_path_info(request)

  erb :index
end
