class Task < ApplicationRecord
  before_validation :default_done, on: :create
  def default_done
    self.done = false
  end
end
