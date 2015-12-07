# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories_list = []
[{ name: 'adventure' }, { name: 'fashion' }, { name: 'science' }, { name: 'history' }, { name: 'recipe' }, { name: 'culture' }, { name: 'short story' }, { name: 'sweet memories' }].each do |cat|
  unless Category.find_by(name: cat[:name])
    categories_list << cat
    puts cat[:name]
  end
end
categories = Category.create(categories_list)