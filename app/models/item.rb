class Item < ActiveRecord::Base
  attr_accessible :name, :price, :description

  validates :price, numericality: { greater_than: 0, allow_nil: true }
  validates :name, :description, presence: true

  #after_initialize { puts 'Initialized' } # Item.new
  #after_save {puts 'Saved'}               # Item.save create
  #after_create {puts 'Created'}           # Item.create
  #after_update {puts 'Updated'}
  #after_destroy {puts 'Destroyed'}        # Item.destroy

end
