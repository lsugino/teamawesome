require 'faker'



50.times do |task|
  Task.create(:task, :task => Faker::Lorem.sentence)
end

5.times do 














 create_table :tasks do |t|
      t.reference :task, index: true
      t.string :task
      t.varbinary :completed?

      t.timestamps
    end
