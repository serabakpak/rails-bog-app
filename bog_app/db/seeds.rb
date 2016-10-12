# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Creature.destroy_all
creatures = Creature.create([
	{name: 'Yoda', description: 'Little green dude'},
	{name: 'Padme', description: 'Queen'},
	{name: 'Darth Maul', description: 'Bad dude'},
	{name: 'Darth Sidious', description: 'First bad dude'},
	{name: 'Chewbacca', description: 'Huge hairy dude'},
	{name: 'Imperial Guard', description: 'Minion dude'}

])