require_relative '../../config/application'

class View
  def self.show(array_of_tasks)
    array_of_tasks.each do |task|
      puts "#{task[:id]}".center(4) + " || completed?: " + 
      "#{task[:completed?]}".center(6) + " | #{task[:task]}"
    end 
  end

  def self.delete(task)
    puts "You deleted #{task[:task]}"
  end

  def self.complete(task)
    puts "You completed #{task}"
  end

  def self.add(task)
    puts "You added #{task} to your todo list"
  end

end
