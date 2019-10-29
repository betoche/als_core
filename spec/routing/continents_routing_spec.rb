require "rails_helper"

RSpec.describe ContinentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/continents").to route_to("continents#index")
    end

    it "routes to #show" do
      expect(:get => "/continents/1").to route_to("continents#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/continents").to route_to("continents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/continents/1").to route_to("continents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/continents/1").to route_to("continents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/continents/1").to route_to("continents#destroy", :id => "1")
    end
  end
end
