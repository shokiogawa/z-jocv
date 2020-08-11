class Exam < ApplicationRecord
  belongs_to :topic
  belongs_to :user

  has_many :sexams, dependent: :destroy
  accepts_nested_attributes_for :sexams, allow_destroy: true

  has_one :answer, dependent: :destroy


end
