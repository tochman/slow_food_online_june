class Restaurant < ApplicationRecord

  validates_presence_of :restaurant_name
  validates_presence_of :restaurant_address
  validates_presence_of :zip_code
  validates_presence_of :delivery_radius
  validates_presence_of :public_phone_number
  validates_presence_of :owner_name
  validates_presence_of :owner_address
  validates_presence_of :private_phone_number
  validates_presence_of :email_address
  validates_presence_of :restaurant_description
  validates_presence_of :select_your_cuisine

end
