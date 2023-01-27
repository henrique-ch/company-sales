require 'rails_helper'

RSpec.describe UploadFile, type: :model do
  describe "validations" do
    it "New upload" do
      expect(FactoryBot.build(:upload_file)).to be_valid
    end

    it{ is_expected.to validate_presence_of :nome }
    it{ is_expected.to validate_presence_of :path }
  end
end
