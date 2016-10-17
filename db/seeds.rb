# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do 
  user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.safe_email, 
      password: '123456',
      password_confirmation: '123456'
    )
  user.save!
  %w(home work cell).each do |phone_name|
    phone = user.phones.create(
        name: phone_name,
        phone_number: Faker::PhoneNumber.cell_phone
      )
    phone.save
  end
end
