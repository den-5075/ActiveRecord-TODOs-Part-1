require_relative '../../config/application'

class Checklist < ActiveRecord::Base

  def self.list_task
   puts "Your tasks"

   Checklist.all.each do |item|
    puts "#{item.task}"
   end
  end

  def self.add_task(temp)
    item = Checklist.new
    item[:task] = option
    item.save
    puts "Added #{temp} to list"

  end

  def self.delete(id)
    item = Checklist.find_by(id)
    item.destroy
    puts " #{item} has been deleted"

  end

  def self.complete(id)
    item = Checklist.find_by(id)
    puts "#{item.task} " + " " + "[X]"
  end 

end