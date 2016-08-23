require 'rails_helper'

RSpec.describe Restaurant, type: :model do

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:restaurant)).to be_valid
    end
  end

  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :restaurant_name }
  end

  describe 'Validations' do
    it { is_expected. to validate_presence_of :restaurant_name }
    it { is_expected. to validate_presence_of :restaurant_address }
    it { is_expected. to validate_presence_of :zip_code }
    it { is_expected. to validate_presence_of :delivery_radius }
    it { is_expected. to validate_presence_of :public_phone_number }
    it { is_expected. to validate_presence_of :owner_name }
    it { is_expected. to validate_presence_of :owner_address }
    it { is_expected. to validate_presence_of :private_phone_number }
    it { is_expected. to validate_presence_of :email_address }
    it { is_expected. to validate_presence_of :restaurant_description }
    it { is_expected. to validate_presence_of :select_your_cuisine }
  end
end
