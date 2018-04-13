class Task < ApplicationRecord
  has_many :program_items
  has_many :enrollments
end
