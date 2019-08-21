class ReviewSerializer < ActiveModel::Serializer
  belongs_to :destination

  attributes :id, :author, :review, :rating
end
