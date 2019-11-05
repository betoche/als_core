require 'rails_helper'

RSpec.describe "DocumentTypeByCountries", type: :request do
  describe "GET /document_type_by_countries" do
    it "works! (now write some real specs)" do
      get document_type_by_countries_path
      expect(response).to have_http_status(200)
    end
  end
end
