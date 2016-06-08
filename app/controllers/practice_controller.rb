get '/week/:id/:subject/:practice' do
  erb :"practice/#{params[:practice]}"
end
