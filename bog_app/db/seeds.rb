# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Creature.delete_all
creatures = Creature.create([
	{name: 'cookie monster', description: 'hairy blue dude who loves eating cookies'},
	{name: 'big bird', description: 'huge yellow bird'},
	{name: 'kermit', description: 'green froggy dude'},
])