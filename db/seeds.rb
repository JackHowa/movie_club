u = User.create!(name: "Jack", email: "jack@email", hashed_password: "poo")

u.reviews.create!(headline: "great", body: "wonderful", imdb_id: 550)
