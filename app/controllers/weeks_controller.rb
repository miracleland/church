get '/week/:id' do
  current_path_info(request)

  slim :"week/week_#{params[:id]}"
end
