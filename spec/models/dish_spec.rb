require 'rails_helper'

RSpec.describe Dish, type: :model do

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:dish)).to be_valid
    end
  end

  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :price }
    it { is_expected.to have_db_column :allergy_info }
    it { is_expected.to have_db_column :ingredients }
    it { is_expected.to have_db_column :calories }
  end

  describe 'Relationsships' do
    it { is_expected.to belong_to :menu }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :menu}
    it { is_expected.to validate_presence_of :name}
    it { is_expected.to validate_presence_of :price}
  end

end
