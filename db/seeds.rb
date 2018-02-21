require 'faker'
puts 'Cleaning database...'
User.destroy_all
Skill.destroy_all
UserSkill.destroy_all
puts 'Creating 20 fake users...'
20.times do
  User.create!(
    name:    Faker::Company.name,
    email:   Faker::Internet.email,
    password: Faker::Internet.password,
    pseudo:  Faker::GameOfThrones.character,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}"
  )
end

puts 'Creating 20 fake skills...'
20.times do
    skill = Skill.new(
    name:    Faker::Beer.name,
    description: Faker::BackToTheFuture.quote
  )
  skill.save!
end


puts 'Creating 20 fake users skills...'

User.all.each do |user|

  UserSkill.create!(user: user, skill: Skill.all.sample)

end


puts 'Finished!'

#   names = ["john","nathan", "sylvain", "Benoit", "Damien", "Ercic"]
#   User.create!(
#     name:    names.sample,
#     email:   Faker::Internet.email,
#     password: Faker::Internet.password,
#     pseudo:  Faker::GameOfThrones.character,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}"
#   )
# end
