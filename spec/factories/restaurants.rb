FactoryGirl.define do
  factory :restaurant do
    restaurant_name 'Ching'
    restaurant_address 'Main Street'
    zip_code '12345'
    delivery_radius '5km'
    public_phone_number '0123456789'
    owner_name 'Ching'
    owner_address 'Main Street'
    private_phone_number '0123456789'
    email_address 'something@random.com'
    restaurant_description 'Great asian food'
    select_your_cuisine 'Chinese'
  end
end
