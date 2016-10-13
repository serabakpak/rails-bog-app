# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Creature.destroy_all
creatures = Creature.create([
	{
		name: 'Yoda', 
		description: 'Little green dude',
		avatar: File.open(File.join(Rails.root, 'db', 'fixtures', 'yoda.jpg'))
	},
	{
		name: 'Padme', 
		description: 'Queen',
		avatar: File.open(File.join(Rails.root, 'db', 'fixtures', 'padme.jpg'))
	},
	{  
		name: 'Darth Maul', 
		description: 'Bad dude',
		avatar: File.open(File.join(Rails.root, 'db', 'fixtures', 'darth-maul.jpg'))
	},
	{
		name: 'Darth Sidious', 
		description: 'First bad dude',
		avatar: File.open(File.join(Rails.root, 'db', 'fixtures', 'emperor.jpg'))
	},
	{
		name: 'Chewbacca', 
		description: 'Huge hairy dude',
		avatar: File.open(File.join(Rails.root, 'db', 'fixtures', 'chewy.jpg'))
	},
	{
		name: 'Imperial Guard', 
		description: 'Minion dude',
		avatar: File.open(File.join(Rails.root, 'db', 'fixtures', 'imperial-guard.jpg'))
	}
])

12.times do
	Creature.create(
		{
			name: FFaker::Name.first_name,
			description: FFaker::DizzleIpsum.sentence,
			avatar: FFaker::Avatar.image
		}
	)
end

