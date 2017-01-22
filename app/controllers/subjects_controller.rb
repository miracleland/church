get '/week/:id/:subject' do
  slim :"subject/#{params[:subject]}"
end
