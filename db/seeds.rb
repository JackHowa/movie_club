u = User.create!(name: "Jack", email: "jack@email", password: "password")

u.reviews.create!(headline: "great", body: "wonderful", imdb_id: 550)
