class Restaurant < ApplicationRecord

  belongs_to :user
  geocoded_by :full_address

  validates_presence_of :name,
                        :address,
                        :zip_code,
                        :city,
                        :delivery_radius,
                        :phone_number,
                        :email_address,
                        :description,
                        :cuisine



  after_save :geocode

  def full_address
    [self.address, self.zip_code, self.city].join(', ')
  end

end
