require 'rails_helper'

RSpec.describe Merchant, type: :model do
  describe 'associations' do
    it {is_expected.to have_and_belong_to_many(:item) } 
  end
end
