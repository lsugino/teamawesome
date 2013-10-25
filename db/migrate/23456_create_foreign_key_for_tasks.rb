require_relative '../../config/application'

class CreateForeignKeyForTasks < ActiveRecord::Migration

  def change
    add_reference :tasks, :list, index: true
  end
end
