# require_relative '../config/application'
require 'faker'

# Task.delete_all
# List.delete_all

p vanessas_list = List.create(:name => "v_superpowers")
p nicoles_list = List.create(:name => "n_superpowers")

p vanessas_list.tasks.create(:task => "learn to fly")
p nicoles_list.tasks.create(:task => "learn to be invisible")


5.times do
  vanessas_list.tasks.create(:task => Faker::Lorem.sentence)
end

5.times do
  nicoles_list.tasks.create(:task => Faker::Lorem.sentence)
end

# p vanessas_list.id == 16
# p nicoles_list.id == 17


