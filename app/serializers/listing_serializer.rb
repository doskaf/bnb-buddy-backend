class ListingSerializer < ActiveModel::Serializer
  attributes :id, :kind, :bedrooms, :bathrooms, :location, :price, :photos
  has_many :bookings
end
