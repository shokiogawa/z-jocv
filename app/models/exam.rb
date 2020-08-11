class Exam < ApplicationRecord
  belongs_to :topic
  belongs_to :user

  has_many :sexams
  accepts_nested_attributes_for :sexams, allow_destroy: true


end
