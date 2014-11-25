# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_emails = [
  "raghu@example.com",
  "arjun@example.com",
  "dan@example.com",
  "genevieve@example.com",
  "alex@example.com"
]

user_emails.each do |email|
  user = User.new
  user.email = email
  user.save
end

photo_info = [
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Lake_Bondhus_Norway_2862.jpg/1280px-Lake_Bondhus_Norway_2862.jpg",
    :caption => "Lake Bondhus",
    :user => "raghu@example.com"
  },
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Lanzarote_5_Luc_Viatour.jpg/1280px-Lanzarote_5_Luc_Viatour.jpg",
    :caption => "Cueva de los Verdes",
    :user => "raghu@example.com"
  },
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Fire_breathing_2_Luc_Viatour.jpg/1280px-Fire_breathing_2_Luc_Viatour.jpg",
    :caption => "Jaipur",
    :user => "arjun@example.com"
  },
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Ніжний_ранковий_світло.jpg/1280px-Ніжний_ранковий_світло.jpg",
    :caption => "Sviati Hory",
    :user => "arjun@example.com"
  },
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Mostar_Old_Town_Panorama_2007.jpg/1280px-Mostar_Old_Town_Panorama_2007.jpg",
    :caption => "Mostar",
    :user => "genevieve@example.com"
  },
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Elakala_Waterfalls_Swirling_Pool_Mossy_Rocks.jpg/1280px-Elakala_Waterfalls_Swirling_Pool_Mossy_Rocks.jpg",
    :caption => "Elakala",
    :user => "genevieve@example.com"
  },
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Biandintz_eta_zaldiak_-_modified2.jpg/1280px-Biandintz_eta_zaldiak_-_modified2.jpg",
    :caption => "Biandintz",
    :user => "alex@example.com"
  }
]

photo_info.each do |photo_hash|
  p = Photo.new
  p.source = photo_hash[:source]
  p.caption = photo_hash[:caption]
  p.owner_id = User.find_by({ :email => photo_hash[:user] }).id
  p.save
end

puts "There are now #{Photo.count} photos in the database."

Photo.all.each do |photo|
  rand(3).times do
    user = User.offset(rand(User.count)).first
    comment = Comment.new
    comment.photo_id = photo.id
    comment.user_id = user.id
    comment.content = "Comment about #{photo.caption} by #{user.email}"
    comment.save
  end
end

puts "There are now #{Comment.count} comments in the database."

Photo.all.each do |photo|
  rand(3).times do
    user = User.offset(rand(User.count)).first
    favoriting = Favoriting.new
    favoriting.photo_id = photo.id
    favoriting.user_id = user.id
    favoriting.save
  end
end

puts "There are now #{Comment.count} comments in the database."
