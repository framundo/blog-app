POSTS_COUNT = 30
COMMENT_COUNT = 300
USER_COUNT = 15

POSTS_COUNT.times do
  Post.create!(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph(20))
end

USER_COUNT.times do
  User.create!(email: Faker::Internet.email)
end

COMMENT_COUNT.times do
  Comment.create!(user: User.order('RANDOM()').limit(1).first,
                  post: Post.order('RANDOM()').limit(1).first,
                  text: Faker::Lorem.paragraph(3))
end
