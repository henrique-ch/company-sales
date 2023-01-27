require 'rails_helper'

RSpec.describe "Purchasers", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/purchaser/index"
      expect(response).to have_http_status(302)
    end
  end

end
