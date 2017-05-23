class Location < ApplicationRecord
  belongs_to :order, optional: true
end
