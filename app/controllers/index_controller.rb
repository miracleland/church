get '/' do
  current_path_info(request)

  slim :'index/cirriculum'
end
