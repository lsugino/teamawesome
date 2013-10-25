require_relative '../../config/application'

class TasksTable < ActiveRecord::Migration

  def change 
    create_table :tasks do |t|
      # t.integer :list, index: true
      t.string :task
      t.boolean :completed?, default: false

      t.timestamps
    end
  end
end



# task table
# completed?
# list_id
# created
# updated
