class Program < ApplicationRecord
  has_many :program_items, dependent: :destroy
  has_many :tasks, through: :program_items

  has_many :enrollments

  # class variable, not instance variable
  # scope :bob, -> {
    # Task.where(id: program_items.map(&:task_id) )
  # }
end
