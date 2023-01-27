require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it{ is_expected.to validate_presence_of :email }
  end

  it { expect(FactoryBot.build(:user)).to be_valid }   

end