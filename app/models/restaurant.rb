class Restaurant < ApplicationRecord

  belongs_to :user
  validates_presence_of :name,
                        :address,
                        :zip_code,
                        :city,
                        :delivery_radius,
                        :phone_number,
                        :email_address,
                        :description,
                        :cuisine

end
