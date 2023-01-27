require 'rails_helper'

RSpec.describe "Merchants", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/merchant/index"
      expect(response).to have_http_status(302)
    end
  end

end
