class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :restaurant_address
      t.string :zip_code
      t.string :radius_id
      t.string :public_phone_number
      t.string :owner_name
      t.string :owner_address
      t.string :private_phone_number
      t.string :email_address
      t.string :restaurant_description
      t.string :cuisine_id

      t.timestamps
    end
  end
end
