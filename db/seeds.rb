# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create(
    title: "eunha #{blog}",
    body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
    status: 1,
    topic_id: Topic.last.id
  )
end

puts "10 blog post created"

5.times do |skill|
  Skill.create(
    title: "sinb #{skill}",
    percent_utilized: 10
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  if portfolio_item < 5
    Portfolio.create!(
      title:"Portfolio title: #{portfolio_item}",
      subtitle:"Java",
      body:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
      main_image: "https://place-hold.it/600x400",
      thumb_image:"https://place-hold.it/350x200"
      # main_image: "app/assets/images/eunha1.jpg",
      # thumb_image:"app/assets/images/eunha1.jpg"

    )
  else
    Portfolio.create!(
      title:"Portfolio title: #{portfolio_item}",
      subtitle:"Ruby",
      body:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
      main_image: "https://place-hold.it/600x400",
      thumb_image:"https://place-hold.it/350x200"
      # main_image: "app/assets/images/eunha1.jpg",
      # thumb_image:"app/assets/images/eunha1.jpg"
    )
  end
    tech = ['Java', 'React', 'Ruby','C#', 'Javascript', 'Python', 'PHP', 'SQL', 'Swift', 'Scala']
    
    3.times do |technology|
    Portfolio.last.technologies.create!(
      name: tech[rand(tech.count)]
    )
    end
  
end

# 9.times do |portfolio_item|
#   Portfolio.create!(
#       title:"Portfolio title: #{portfolio_item}",
#       subtitle:"Java",
#       body:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
#       main_image: "https://place-hold.it/600x400",
#       thumb_image:"https://place-hold.it/350x200"
#       # main_image: "app/assets/images/eunha1.jpg",
#       # thumb_image:"app/assets/images/eunha1.jpg"
#   )
# end

puts "9 porfolio items created"

# 3.times do |technology|
#   Portfolio.last.technologies.create!(
#     name: 'Technology #{topic}'
#   )
# end

# puts "3 technologies created"