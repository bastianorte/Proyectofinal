User.delete_all
Family.delete_all



User.create!(
photo: 'https://loremflickr.com/100/100/dog',
name: 'Bastian',
email: 'bastian@bastian.com',
password:123456,
family_id: 17
)
puts "usuario creado"

Family.create!(
photo: 'https://loremflickr.com/100/100/dog',
name: 'familia1',)
puts "familia creado"

Family.create!(
photo: 'https://loremflickr.com/100/100/dog',
name: 'familia2',)
puts "familia creado"


3.times do |i|
  User.create(
    name: "usuario#{i+1}",
    email: "usuarios#{i+1}@gmail.com",
    photo: "https://loremflickr.com/100/100?lock=#{1+i}",
    password:123456,
    family_id: 17
  )
end

3.times do |i|
  User.create(
    name: "usuario#{i+4}",
    email: "usuarios#{i+4}@gmail.com",
    photo: "https://loremflickr.com/100/100?lock=#{1+i}",
    password:123456,
    family_id: 2
  )
end
AdminUser.create!(email: 'juanes@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
