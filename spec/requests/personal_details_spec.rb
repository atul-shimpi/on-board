require 'rails_helper'

RSpec.describe "PersonalDetails", :type => :request do
  describe "GET /personal_details" do
    it "works! (now write some real specs)" do
      get personal_details_path
      expect(response).to have_http_status(200)
    end
  end
end
