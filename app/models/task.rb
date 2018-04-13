class Task < ApplicationRecord
  belongs_to  :program_items, optional: true
end
