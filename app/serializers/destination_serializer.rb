class DestinationSerializer < ActiveModel::Serializer
  has_many :reviews
  attributes :id, :name
end
