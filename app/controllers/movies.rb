get '/movies' do
  # sample of movies
  erb :'/movies/index'
end

get '/movies/:id' do
	uri = URI("https://api.themoviedb.org/3/movie/#{params[:id]}?api_key=d49b77a7a81a0c4dd02f4b1e0e2f153c")
  request = Net::HTTP.get(uri)
  @reviews = Review.where(imdb_id: params[:id])
  @movie = JSON.parse(request)
  erb :'/movies/show'
end


