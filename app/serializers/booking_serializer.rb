class BookingSerializer < ActiveModel::Serializer
  attributes :id, :guest, :check_in, :check_out, :listing_id
end
