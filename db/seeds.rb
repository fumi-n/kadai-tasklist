# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#add /16  testdatas
#Task.create(id: 2, status: 'test status 1', content: 'test content 1')
#Task.create(status: 'test status 2', content: 'test content 2')
#Task.create(status: 'test status 3', content: 'test content 3')

##model>[app].rb にValidationフィルタがあるとうまく反映されない(文字数など)
(1..10).each do |num|
  Task.create(status: 'status-#{num}' , content: 'content-#{num}')
end
