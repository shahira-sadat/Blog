# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = Author.create(name: "shahir", photo: "url", bio: "Hi I am shahir...", posts_counter: 0)
user2 = Author.create(name: "Ahmad", photo: "url", bio: "Hello my name is Ahmad", posts_counter: 0)
user3 = Author.create(name: "Mohammad", photo: "url", bio: "Hey my name is Mohammad", posts_counter: 0)
user4 = Author.create(name: "Asma", photo: "url", bio: "Hey my name is Asma", posts_counter: 0)
post1 = Post.create(author_id: 1, title: 'My post title', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', comments_counter: 0, likes_counter: 0)
post2 = Post.create(author_id: 3, title: 'My post title', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', comments_counter: 0, likes_counter: 0)
post3 = Post.create(author_id: 2, title: 'My post title', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', comments_counter: 0, likes_counter: 0)
post4 = Post.create(author_id: 6, title: 'My post title', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', comments_counter: 0, likes_counter: 0)
post5 = Post.create(author_id: 4, title: 'My post title ', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', comments_counter: 0, likes_counter: 0)
post6 = Post.create(author_id: 5, title: 'My post title', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', comments_counter: 0, likes_counter: 0)
post7 = Post.create(author_id: 1, title: 'My post title', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', comments_counter: 0, likes_counter: 0)
comment1 = Comment.create(text: "Awesome, keep it up!!", author: user1, post:post1)
comment2 = Comment.create(text: "Thanks for sharing!", author: user2, post:post2)

Like.create(author_id: 1, post: post1)
