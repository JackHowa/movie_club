get '/movies' do
  # sample of movies
  erb :'/movies/index'
end

get '/movies/:id' do
	uri = URI("https://api.themoviedb.org/3/movie/#{params[:id]}?api_key=#{ENV["MOVIE_DB_KEY"]}")
  request = Net::HTTP.get(uri)
  @reviews = Review.where(imdb_id: params[:id])
  @movie = JSON.parse(request)
  erb :'/movies/show'
end


