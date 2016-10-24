# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email: "123@qq.com", password: "123")
user2 = User.create(email: "user@example.com", password: "password")
user3 = User.create(email: "222@qq.com", password: "222")
user4 = User.create(email: "233@qq.com", password: "233")
user5 = User.create(email: "666@qq.com", password: "666")

# post1 = Post.create(information: "This is a post 11111", user_id: "4")
# post2 = Post.create(information: "This is a post 22222", user_id: "4")
# post3 = Post.create(information: "This is a post 33333", user_id: "1")
# post4 = Post.create(information: "This is a post 44444", user_id: "4")

post1 = Post.create(information: "This is a post 11111")
post2 = Post.create(information: "This is a post 22222")
post3 = Post.create(information: "This is a post 33333")
post4 = Post.create(information: "This is a post 44444")

comment1 = Comment.create(info: "good", post: post1)
comment2 = Comment.create(info: "good good", post: post1)
comment3 = Comment.create(info: "very", post: post2)
comment4 = Comment.create(info: "excellent", post: post3)
comment5 = Comment.create(info: "amazing", post: post4)
comment6 = Comment.create(info: "amazing", post: post4)
