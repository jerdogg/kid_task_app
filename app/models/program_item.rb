# purpose of this table it to keep track of which
# tasks are in a program, and maintain order of the task

class ProgramItem < ApplicationRecord
  belongs_to :program
  belongs_to :task

  validates :task_id, :presence => true
  validates :position, uniqueness: true
end
