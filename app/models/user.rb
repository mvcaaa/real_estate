class User < ActiveRecord::Base
  
  # TODO Migration
  # attr_accessible :login

  has_one   :cart
  has_many  :orders
end
