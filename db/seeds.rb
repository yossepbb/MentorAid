# db/seeds.rb
puts 'Creating users...'
tyrion_lannister = User.new(name: "Tyrion Lannister", email: "tyrion@got.com", password: "123456", pseudo: "Tyrion", address:"82 Boulevard de Clichy, 75018 Paris", avatar:"thyrion.jpg")
tyrion_lannister.save!

joffrey_baratheon = User.new(name: "Joffrey Baratheon", email: "joffrey@got.com", password: "123456", pseudo: "Joffrey", address:"55 Rue du Faubourg Saint-Honoré, 75008 Paris", avatar:"JoffreyBaratheon.jpg")
joffrey_baratheon.save!

theon_greyjoy = User.new(name: "Theon Greyjoy", email: "theon@got.com", password: "123456", pseudo: "Theon", address:"34 Rue Saint-Louis en l'Île, 75004 Paris", avatar:"Theon_Greyjoy.png")
theon_greyjoy.save!


puts 'Finished creating users !'

puts 'Creating skills...'
sexe = Skill.new(name: "Education sexuelle", description: "Tout ce que vous avez voulu savoir sur les femmmes et l'art de la séduction", picture: "moulin-rouge.jpg",  icon:"fas fa-heart")
sexe.save!

gouverner = Skill.new(name: "L'art de gouverner", description: "Gouverner sans partage, éliminer ses adversaires, comploter... ", picture: "palais-elysee.jpg",  icon:"fas fa-chess-king")
gouverner.save!

sm = Skill.new(name: "Thérapie cognitive", description: "Vous avez subi des tortures, vous avez besoin de vous détacher du passé ?", picture: "les-mauvais-garcons.jpg",  icon:"fab fa-hire-a-helper")
sm.save!


puts 'Finished creating skills !'


puts 'Creating user-skills...'
u_skill1 = UserSkill.new(skill_id: 1, user_id: 1)
u_skill1.save!

u_skill2 = UserSkill.new(skill_id: 2, user_id: 2)
u_skill2.save!

u_skill3 = UserSkill.new(skill_id: 3, user_id: 3)
u_skill3.save


puts 'Finished creating user-skills !'
