class Item < ActiveRecord::Base
  attr_accessible :name, :price, :description, :address
  geocoded_by :address, :units => :km
  reverse_geocoded_by :latitude, :longitude

  validates :price, numericality: { greater_than: 0, allow_nil: true }
  validates :address, :name, :description, presence: true

  after_validation :geocode, :if => :address_changed?
  # Идея хранить количество соседних домов в отдельном поле
  #after_validation :nearbys_update, :if => :address_changed?

end
