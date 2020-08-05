class TContent < ApplicationRecord
  belongs_to :topic
  belongs_to :user
  has_many :s_contents
end
