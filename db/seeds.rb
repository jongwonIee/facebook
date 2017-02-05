puts "Inserting user data.."
[
    [1, Faker::Name.name, Faker::Internet.email, rand(20..39), 1],
    [2, Faker::Name.name, Faker::Internet.email, rand(20..39), 1],
    [3, Faker::Name.name, Faker::Internet.email, rand(20..39), 1],
    [4, Faker::Name.name, Faker::Internet.email, rand(20..39), 1],
    [5, Faker::Name.name, Faker::Internet.email, rand(20..39), 1],
    [6, Faker::Name.name, Faker::Internet.email, rand(40..59), 2],
    [7, Faker::Name.name, Faker::Internet.email, rand(40..59), 2],
    [8, Faker::Name.name, Faker::Internet.email, rand(40..59), 2],
    [9, Faker::Name.name, Faker::Internet.email, rand(40..59), 2],
    [10, Faker::Name.name, Faker::Internet.email, rand(40..59), 2]

].each do |x|
  User.create(id: x[0], name: x[1], mail: x[2], age: x[3], group_id: x[4])
end

puts "Inserting group data.."
[
    [1, "young"],
    [2, "old"]

].each do |x|
  Group.create(id: x[0], name: x[1])
end

puts "Inserting post data.."
[
    [1, "첫글", "첫글내용", 1],
    [2, "두글", "두글내용", 6],
    [3, "세글", "세글내용", 10]

].each do |x|
  Post.create(id: x[0], title: x[1], content: x[2], user_id: x[3])
end

puts "Inserting comment data.."
[
    [1, "첫글댓글", 4, 1],
    [2, "세글댓글", 9, 3]

].each do |x|
  Comment.create(id: x[0], content: x[1], user_id: x[2], post_id: x[3])
end

puts "Inserting like data.."
[
    [1, 1, 1],
    [2, 2, 1],
    [3, 2, 1],
    [4, 2, 1],
    [5, 2, 2],
    [6, 2, 2],
    [7, 3, 2],
    [8, 4, 2],
    [9, 5, 2],
    [10, 10, 2]

].each do |x|
  Like.create(id: x[0], user_id: x[1], post_id: x[2])
end