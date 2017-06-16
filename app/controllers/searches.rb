get '/searches' do
  # input form
  erb :'/searches/new'
end

post '/searches' do
  readable_uri = URI::encode(params[:query])
  redirect "/searches/#{readable_uri}"
end

# for now just doing hacky solution
get '/searches/:search_query' do
  uri_search = URI("https://api.themoviedb.org/3/search/movie?query=#{params[:search_query]}&api_key=d49b77a7a81a0c4dd02f4b1e0e2f153c")
  request = Net::HTTP.get(uri_search)
  @movies = JSON.parse(request)
  erb :'/searches/show'
end

# let up on the key = timeout for ajax
# remember search queries

# remmeber my last searches and autocomplete that
# optimize
# load on autocomplete


