get '/week/:id/:subject/:practice' do
  slim :"practice/#{params[:practice]}"
end
