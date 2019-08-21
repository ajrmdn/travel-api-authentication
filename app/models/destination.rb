class Destination < ApplicationRecord
  has_many :reviews, dependent: :destroy

  def self.random
     ActiveRecord::Base.connection.execute("SELECT * FROM destinations ORDER BY random() LIMIT(1)").first
  end
end
