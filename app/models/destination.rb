class Destination < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
