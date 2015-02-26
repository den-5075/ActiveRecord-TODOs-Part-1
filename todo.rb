require_relative 'config/application'

puts "Put your application code in #{File.expand_path(__FILE__)}"

input = ARGV[0]

case input
when "list"
  puts "i wanna list all things"
when "delete"
  puts "i wanna delete some task"
end