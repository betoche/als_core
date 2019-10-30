require 'rails_helper'

RSpec.describe "DefaultsAls", type: :request do
  describe "GET /defaults_als" do
    it "works! (now write some real specs)" do
      get defaults_als_index_path
      expect(response).to have_http_status(200)
    end
  end
end
