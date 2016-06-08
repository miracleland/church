get '/week/:id' do
  current_path_info(request)

  erb :"week/week_#{params[:id]}"
end
