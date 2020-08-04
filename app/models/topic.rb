class Topic < ApplicationRecord
  belongs_to :textbook
  has_many :t_contents
end
