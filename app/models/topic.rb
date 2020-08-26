class Topic < ApplicationRecord
  belongs_to :user
  belongs_to :textbook
  has_many :t_contents, dependent: :destroy
  has_many :exams, dependent: :destroy
  validates :title, presence: true, length: {maximum: 255}
end
