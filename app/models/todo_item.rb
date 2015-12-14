class TodoItem < ActiveRecord::Base
  belongs_to :todo_list

  # If completed_at is not blank
  def completed?
    !completed_at.blank?
  end
end
