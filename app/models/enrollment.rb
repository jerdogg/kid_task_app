class Enrollment < ApplicationRecord
  belongs_to :program
  belongs_to :task
  belongs_to :user

  enum state: [:not_started, :in_progress, :finished]
end
