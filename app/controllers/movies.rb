get '/movies' do 
  "find the movie you want"
end 

get '/movies/new' do 

end 


get '/movies/:id' do



	p uri_more = URI('https://api.themoviedb.org/3/search/movie?query=age+of+ultron&api_key=d49b77a7a81a0c4dd02f4b1e0e2f153c')

	uri = URI("https://api.themoviedb.org/3/movie/#{params[:id]}?api_key=d49b77a7a81a0c4dd02f4b1e0e2f153c")
  request = Net::HTTP.get(uri)

  @movie = JSON.parse(request)

  # obj["results"].each do |movie|

  #   p movie["title"]
  #   p movie["poster_path"]
  #   p movie["release_date"]
  #   p movie["id"]

  # end

  # p obj["runtime"] # returns 139

  # p obj["vote_average"] # returns 8.2 

  # p obj["overview"] # returns A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.

  # p obj["tagline"] # "How much can you know about yourself if you've never been in a fight?"

  # p obj["title"] # Fight Club 


  # puts "----------------"

  # p obj["results"][0]["original_title"]

  # https://image.tmdb.org/t/p/w640/t90Y3G8UGQp0f0DrP60wRu9gfrH.jpg


  erb :'/movies/show'

end


