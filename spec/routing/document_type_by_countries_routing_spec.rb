require "rails_helper"

RSpec.describe DocumentTypeByCountriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/document_type_by_countries").to route_to("document_type_by_countries#index")
    end

    it "routes to #show" do
      expect(:get => "/document_type_by_countries/1").to route_to("document_type_by_countries#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/document_type_by_countries").to route_to("document_type_by_countries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/document_type_by_countries/1").to route_to("document_type_by_countries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/document_type_by_countries/1").to route_to("document_type_by_countries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/document_type_by_countries/1").to route_to("document_type_by_countries#destroy", :id => "1")
    end
  end
end
