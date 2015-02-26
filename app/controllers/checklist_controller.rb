require_relative '../../config/application'
require_relative '../models/checklist'


command = ARGV
option = command[0]
 
case option

  when  option == "list"
    Checklist.list_task

  when option == "add"
    Checklist.add_task(temp)
        ARGV[1..-1].join(" ")

  when  option = 'delete'
    Checklist.delete(command[1])

  when option = 'complete'
    Checklist.complete(command[1])

  else 
    "Try Again"
      
end

 
# if command == "add"
#   task_add = []
#   i = 1
#     (ARGV.length - 1).times do
#     task_add << ARGV[i]
#     i += 1
#     end
#       CSV.open("todo.csv", "ab") do |csv|
#         csv << [task_add.join(" ")]
#         puts "added #{task_add.join(" ")} to your TODO list..."
#     end
# end
 
# if command == "delete"
#     @tasks = CSV.read("todo.csv")
#     @tasks.delete_at(ARGV[1].to_i)
#     CSV.open("todo.csv", "w") do |csv|
#       @tasks.each do |task|
#         csv << task
#       end
#     end
# end
 
# if command == "complete"
 
# end
#  