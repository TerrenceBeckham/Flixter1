class Lesson < ApplicationRecord
  belongs_to :section
  mount_uploader :video, VideoUploader

  #pulls gem into the lessons model
  include RankedModel
  ranks :row_order, with_same: :section_id
end
