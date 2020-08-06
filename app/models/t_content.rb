class TContent < ApplicationRecord
  belongs_to :topic
  belongs_to :user
  has_many :s_contents, dependent: :destroy
  accepts_nested_attributes_for :s_contents, allow_destroy: true
  has_many :points, dependent: :destroy
  accepts_nested_attributes_for :points, allow_destroy: true

end
