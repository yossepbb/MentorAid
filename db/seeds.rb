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
    address:  address = ["5 Boulevard Diderot 75012 PARIS",
   "1 place d'ItalieHôtel de Ville 75634 PARIS",
    "115 bis rue Ordener 75018 PARIS",
     "16 18 rue des BatignollesHôtel de Ville 75840 PARIS ",
    "71 avenue Henri MartinHôtel de Ville 75016 PARIS",
    "31 rue PecletHôtel de Ville 75732 PARIS",
    " 14 RUE BREVIN 75014 PARIS",
    " 130 AV D AUMESNILHôtel de ville 75570 PARIS",
    "23 rue Bichat 75475 PARIS",
    "21 place du PanthéonMairie de Paris 75231 PARIS ",
    " 5 Boulevard Diderot 75012",
    "17 rue Meynadier 75019 PARIS ",
    "11 rue Dussoubs 75002 ",
    "6 place Gambetta 75971 PARIS",
    "29 rue de Bourgogne 75007 PARIS",
    "Hotel de Ville 75196 PARIS",
    " 125 bis rue d Avron 75020 PARIS",
    "75 Rue de Tocqueville 75850 PARIS ",
    "58 62 Rue de Mouzaia 75935 PARIS ",
    "68 rue des plantes 75014 PARIS",
    "130 avenue Ledru Rollin 75011 PARIS",
    "23 bis rue Bichat 75010 PARIS",
    "3 place Jacques Froment 75018 PARIS",
    "7 rue Jean Nicot 75007 PARIS"].sample
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
