# require_relative '../config/application'


require 'faker'

Task.delete_all

p "yuck"
p grrr = Task.create(:task => "grrrr")
p "yucky"

50.times do |task|
  Task.create(:task => Faker::Lorem.sentence)
end

5.times do |list|
  List.create(:name => Faker::Lorem.words.join)
end














 # create_table :tasks do |t|
 #      t.reference :task, index: true
 #      t.string :task
 #      t.varbinary :completed?

 #      t.timestamps
 #    end
