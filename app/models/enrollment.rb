class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :program, optional: true
  belongs_to :task, optional: true
  
  enum state: [:not_started, :in_progress, :finished]

  validate :task_or_program_present

  private 

  def task_or_program_present
    if (task_id.nil? && program_id.nil?)
        errors.add("Must have either a TASK or a PROGRAM for an enrollment")
    end
  end
end
