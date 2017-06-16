get '/reviews' do
  @reviews = Review.all
  erb :'/reviews/index'
end

get '/movies/:movie_id/reviews/new' do
  @movie_id = params[:movie_id]
  @review = Review.new
  erb :'/reviews/new'
end

post '/movies/:movie_id/reviews/new' do
  "Hello World"
end

# get '/movies/:movie_id/reviews/:id' do

# end

