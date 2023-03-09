10.times do
    email = Email.create(object: Faker::Movie.title, body: Faker::Quote.famous_last_words)

end