FactoryGirl.define do
  factory :restaurant do
    name 'Ching'
    address 'Holtermansgatan 10'
    zip_code '411 29'
    city 'Gothenburg'
    delivery_radius '5km'
    phone_number '0123456789'
    email_address 'something@random.com'
    description 'Great asian food'
    cuisine 'Chinese'
  end
end
