require "rails_helper"

RSpec.describe DefaultsAlsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/defaults_als").to route_to("defaults_als#index")
    end

    it "routes to #show" do
      expect(:get => "/defaults_als/1").to route_to("defaults_als#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/defaults_als").to route_to("defaults_als#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/defaults_als/1").to route_to("defaults_als#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/defaults_als/1").to route_to("defaults_als#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/defaults_als/1").to route_to("defaults_als#destroy", :id => "1")
    end
  end
end
