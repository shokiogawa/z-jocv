class Topic < ApplicationRecord
  belongs_to :textbook
  has_many :t_contents
  validates :title, presence: true, length: {maximum: 255}
end
