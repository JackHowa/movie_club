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
  uri_search = URI("https://api.themoviedb.org/3/search/movie?query=#{params[:search_query]}&api_key=#{ENV["MOVIE_DB_KEY"]}")
  request = Net::HTTP.get(uri_search)
  @movies = JSON.parse(request)
  erb :'/searches/_show', layout: false
end

# let up on the key = timeout for ajax
# remember search queries

# remmeber my last searches and autocomplete that
# optimize
# load on autocomplete


