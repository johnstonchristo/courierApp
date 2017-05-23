class CourierLocation < Location
  belongs_to :order, optional: true
  geocoded_by :full_street_address
after_validation :geocode
end
