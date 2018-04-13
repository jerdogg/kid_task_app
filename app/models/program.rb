class Program < ApplicationRecord
  has_many :program_items, dependent: :destroy

  has_many :tasks, through: :program_items

  # scope :tasks, -> {
  #   Task.where(id: program_items.map(&:task_id) )
  # }
end
