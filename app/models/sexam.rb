class Sexam < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :exam
end
