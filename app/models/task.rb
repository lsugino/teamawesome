
class Task < ActiveRecord::Base
  belongs_to :lists

  def self.add(string)
    added = create(:task => string)
    added.save
  end

  def self.delete(to_delete)
    deleted = find(to_delete.first.to_i).destroy
    deleted.save
  end

  def self.complete(completed)
    comp = find(completed.first.to_i)
    comp.update_attribute(:completed?, true)
    comp.save
  end

end
