class Listing < ApplicationRecord
    has_many :bookings
    validates_presence_of :type, :location, :price
    validates_inclusion_of :type, :in => ['Bedroom', 'House', 'Apartment', 'Mobile Home']
end
