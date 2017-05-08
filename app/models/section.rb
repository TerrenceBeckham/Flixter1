class Section < ApplicationRecord
  belongs_to :course # The section can belong to only one course
end
