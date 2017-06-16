get '/reviews' do
  @reviews = Review.all
  erb :'/reviews/index'
end

get '/movies/:movie_id/reviews/new' do
  authenticate!
  @movie_id = params[:movie_id]
  @review = Review.new
  erb :'/reviews/new'
end

post '/movies/:movie_id/reviews/new' do
  authenticate!
  @movie_id = params[:movie_id]
  @review = current_user.reviews.new(headline: params[:headline], body: params[:body], imdb_id: @movie_id)
  if @review.save
    redirect "/movies/#{@movie_id}"
  else
    @errors = @review.errors.full_messages
    erb :'/movies/show'
  end
end

# maybe later comment on that review
# get '/movies/:movie_id/reviews/:id' do

# end

