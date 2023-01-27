require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'associations' do 
    it { is_expected.to have_and_belong_to_many(:merchant)} 
  end

  it { expect(FactoryBot.build(:item)).to be_valid }
end
