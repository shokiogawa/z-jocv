class SContent < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :t_content
end
