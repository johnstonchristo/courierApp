class Location < ApplicationRecord
  belongs_to :order, optional: true
#   geocoded_by :address
# after_validation :geocode
end
