class Location < ApplicationRecord
  has_many :members

  # Geocoder
#  geocoded_by :address,
#    latitude: :latitude,
#    longitude: :longitude

#  after_validation :geocode

  def self.find_by_si_and_gu(si, gu)
    where(si: si).where('gu LIKE ?', "%#{gu}%").first
  end

  def self.find_by_si(si)
    where(si: si).first
  end
end
