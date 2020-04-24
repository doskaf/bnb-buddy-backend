class Listing < ApplicationRecord
    has_many :bookings
    validates_presence_of :kind, :location, :price
end
