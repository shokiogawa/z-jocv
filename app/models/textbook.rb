class Textbook < ApplicationRecord
    has_many :topics, dependent: :destroy
end
