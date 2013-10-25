
class TasksTable < ActiveRecord::Migration
  def change 
    create_table :tasks do |t|
      t.reference :task, index: true
      t.string :task
      t.varbinary :completed?

      t.timestamps
    end
  end
end



# task table
# completed?
# list_id
# created
# updated
