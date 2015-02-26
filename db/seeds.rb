require 'faker'
puts "im running seeds.rb"

11.times do
 Checklist.create(task: Faker::Lorem.sentence(6))
end