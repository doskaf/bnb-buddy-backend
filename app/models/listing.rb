class Listing < ApplicationRecord
    has_many :bookings
    validates_presence_of :kind, :location, :price
    validates_inclusion_of :kind, :in => ['Bedroom', 'House', 'Apartment', 'Mobile Home']
end
