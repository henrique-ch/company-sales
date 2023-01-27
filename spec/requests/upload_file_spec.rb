require 'rails_helper'
include Uploads

RSpec.describe "UploadFiles", type: :request do
  describe "POST /upload" do
    it "uploads a file" do
      file =  Uploads::File.new(Rails.root.join('spec/fixtures/example_input.tab'))
      post upload_path, params: { upload_file: { file: file } }

      expect(response).to have_http_status(302)
    end
  end
end
