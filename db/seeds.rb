# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

astronaut_1 = Astronaut.create(name: "Neil Armstrong", age: 40, job: "Captain")
mission_1 = astronaut_1.missions.create(title: "Mission 1", time_in_space: 365)

mission_2 = astronaut_1.missions.create(title: "Mission 2", time_in_space: 180)
astronaut_2 = mission_1.astronauts.create(name: "Buzz Alrdin", age: 42, job: "Engineer")

# book_5 = Book.create(title: "Wuthering Heights", page_num: 348, year_published: 1890)
# author_6 = book_5.authors.create(name: "Emily Bronte")
#
# review_13 = book_5.reviews.create(review_title: "Why the popularity?", rating: 3, review_text: "Overrated tale of love and deception", user_id: user_5.id)
