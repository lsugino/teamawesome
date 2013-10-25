# require_relative '../config/application'
require 'faker'



Task.delete_all


  vanessas_list = List.create(:name => Faker::Lorem.words.join)
  p vanessas_list.id
  learning = vanessas_list.tasks.create( :task => "learn to fly" )
  p learning.list_id
  p learning.id






