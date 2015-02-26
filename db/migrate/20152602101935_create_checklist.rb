class CreateChecklist < ActiveRecord::Migration
  def change
   create_table :checklists do |t|
    t.string :task
    t.string :complete
    t.timestamps null: false
   end
  end
end
