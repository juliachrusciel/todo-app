# A Todo model should contain...
# id
# task text
# complete boolean
# due_date timestamp

class Todo <ActiveRecord::Base

  def to_s
    self.to_s
  end

end
