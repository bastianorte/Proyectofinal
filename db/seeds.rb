User.delete_all
Family.delete_all

User.create!(
  photo: 'https://loremflickr.com/100/100/dog',
  name: 'User',
  email: 'Usern@example.com',
  password:123456,
)
puts "usuario creado"

5.times do |i|
  User.create(
    name: Faker::Name.name,
    email: "usuarios#{i+1}@gmail.com",
    photo: "https://loremflickr.com/100/100?lock=#{1+i}",
    password:123456,
    family_id: 1,
    age: i+5,
    height: 170,
    weight: 50,
    sex: 1
  )
end
puts "usuarios creado"

Family.create!(
  photo: 'https://loremflickr.com/100/100/dog',
  name: 'familia1',)
  puts "familia creado"

Family.create!(
photo: 'https://loremflickr.com/100/100/dog',
name: 'familia2',)
puts "familia creado"


5.times do |i|
  Food.create(
    name: Faker::Food.dish,
    photo: "https://loremflickr.com/100/100?lock=#{1+i}",
    protein:100,
    calorie:100,
    carbohydrate:100
  )
end

AdminUser.create!(email: 'juanes@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
