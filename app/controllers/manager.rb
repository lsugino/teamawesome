require_relative '../../config/application'
require_relative '../models/task'
require_relative '../view/view'

class Controller
  def self.commander
    @command = ARGV
    @first = @command.shift
    case @first
    when 'add'
      added = @command.join(' ')
      Task.add(added)
      View.add(added)
    when 'list'
      View.show(Task.all)
    when 'delete'
      View.delete(Task.find(@command.first.to_i))
      Task.delete(@command)
    when 'complete'
      Task.complete(@command)
      View.complete(@command)
    else
      raise ArgumentError "Please enter add, list, delete, or complete"
    end
  end
end

Controller.commander
