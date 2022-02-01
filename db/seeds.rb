# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 100.times do
# 	name = Faker::Name.unique.name
# 	Member.create(name: name)
# end

# 200.times do
# 	place = Faker::Address.city
# 	Game.create(place: place)
# end

# 10000.times do
# 	score = rand(100..1000)
# 	member_id = rand(1..100)
# 	game_id = rand(1..200)
# 	unless MemberGame.where(member_id: member_id, game_id: game_id).exists?
# 		MemberGame.create(score: score, member_id: member_id, game_id: game_id)
# 	end
# end