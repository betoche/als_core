require 'rails_helper'

RSpec.describe "Continents", type: :request do
  describe "GET /continents" do
    it "works! (now write some real specs)" do
      get continents_path
      expect(response).to have_http_status(200)
    end
  end
end
