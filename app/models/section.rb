class Section < ApplicationRecord
  belongs_to :course # The section can belong to only one course
  has_many :lessons
end
