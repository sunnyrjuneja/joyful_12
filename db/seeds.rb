# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

foods = [
'Beet',
'Cauliflower',
'Pomegranate',
'Tangerine',
'Cabbage',
'Carrot',
'Fennel',
'Sweet potato',
'Apple',
'Broccoli',
'Winter Squash',
'Mushroom',
]

foods.each do |food|
  food = Food.find_or_create_by(name: food, slug: food.downcase.split(' ').join('-'))
  food.cooking_methods.find_or_create_by(name: 'Bake', instructions: "Bake the #{food.name}")
  food.cooking_methods.find_or_create_by(name: 'Mash', instructions: "Mash the #{food.name}")
  food.cooking_methods.find_or_create_by(name: 'Soup', instructions: "Make the #{food.name} into soup.")
end
