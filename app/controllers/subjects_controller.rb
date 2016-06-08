get '/week/:id/:subject' do
  erb :"subject/#{params[:subject]}"
end
