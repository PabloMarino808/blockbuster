# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Client.create(
    name: "Admin",
    email: "admin@mail.com"
)

20.times do 
    Client.create(
        name: Faker::Name.name,
        email: "#{Faker::Hipster.word}@mail.com"
    )
    Movie.create(
        title: Faker::Movie.title,
        synopsis: Faker::Lorem.paragraph(sentence_count: 12, supplemental: true),
        client_id: 1
    )
end




puts "Movies and users added"