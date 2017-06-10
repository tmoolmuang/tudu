User.create!(
  name: 'Test User',
  password: 'password',
  email: 'test@user.com',
  role: 'standard',
  confirmed_at: DateTime.now
)

5.times do
  Item.create!(
    name: Faker::Lorem.sentence(2, false, 2),
    user: User.first
  )
end

puts "Seed finished"
puts "#{User.count} fake users created"
puts "#{Item.count} fake items created"