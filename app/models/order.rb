class Order < ActiveRecord::Base
  # TODO Migration
  # attr_accessor :user, :user_id

  belongs_to :user

end
