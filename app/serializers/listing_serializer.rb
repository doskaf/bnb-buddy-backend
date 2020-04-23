class ListingSerializer < ActiveModel::Serializer
  attributes :id, :kind, :bedrooms, :bathrooms, :location, :price
  has_many :bookings
end
