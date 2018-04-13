class ProgramItem < ApplicationRecord
  belongs_to :program
  belongs_to :task

  # has_one :task
  validates :task_id, :presence => true
  validates :position, uniqueness: true
  # validates :program_id, :presence => true
end
