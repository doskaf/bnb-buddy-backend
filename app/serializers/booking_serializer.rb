class BookingSerializer < ActiveModel::Serializer
  attributes :id, :guest, :nights, :listing_id
end
