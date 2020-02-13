# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Faker::UniqueGenerator.clear

City.destroy_all
User.destroy_all
Gossip.destroy_all
Tag.destroy_all
JoinGossipTag.destroy_all
PrivateMessage.destroy_all
JoinPrivateMessageReceiver.destroy_all
Comment.destroy_all
Like.destroy_all
CommentOfComment.destroy_all


ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

10.times do
  City.create(name: Faker::Address.unique.city, zip_code: Faker::Address.unique.zip_code)
end
10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::ChuckNorris.fact, age: (15..75).to_a.sample, email: Faker::Internet.unique.email(domain: 'brazzers'), city: City.all.sample, password: 'ohohohoh')
end
20.times do
  Gossip.create(user: User.all.sample, title: Faker::Book.title, content: Faker::ChuckNorris.fact)
end
10.times do
  Tag.create(title: Faker::Book.genre)
end
Gossip.all.each do |g|
  rand(1..6).times do
    JoinGossipTag.create(tag: Tag.all.sample, gossip: g)
  end
end
5.times do
  PrivateMessage.create(sender: User.all.sample, content: Faker::Quote.unique.most_interesting_man_in_the_world)
  rand(1..6).times do
    JoinPrivateMessageReceiver.create(private_message: PrivateMessage.all.last, recipient: User.all.sample)
  end
end
20.times do
  Comment.create(user: User.all.sample, gossip: Gossip.all.sample, content: Faker::ChuckNorris.fact)
end
20.times do
  Like.create(content: [true, false].sample ? Gossip.all.sample : Comment.all.sample, user: User.all.sample)
end
10.times do
  CommentOfComment.create(user: User.all.sample, content: Faker::ChuckNorris.fact, comment: Comment.all.sample)
end
