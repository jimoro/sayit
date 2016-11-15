require 'random_data'

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

p = Post.find_or_create_by!(
  title: "This unique title of a post",
  body: "This unique body of a post is very short."
)

Comment.find_or_create_by!(
  body: "Here's a unique comment body.",
  post_id: p.id
)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
