require_relative '../../config/application'
require_relative '../models/task'

class Controller
  def self.commander
    @command = ARGV
    @first = @command.shift
    case @first
    when 'add'
      Task.add(@command.join(' '))
    when 'list'
      all_tasks = Task.all
      all_tasks.each do |task|
        puts "#{task[:id]} || completed?: " + "#{task[:completed?]}".center(8) + " | #{task[:task]}"
      end
    when 'delete'
      Task.delete(@command)
    when 'complete'
      Task.complete(@command)
    else
      raise ArgumentError "Please enter add, list, delete, or complete"
    end
  end
end

Controller.commander
