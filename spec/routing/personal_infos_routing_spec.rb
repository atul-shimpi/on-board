require "rails_helper"

RSpec.describe PersonalInfosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/personal_infos").to route_to("personal_infos#index")
    end

    it "routes to #new" do
      expect(:get => "/personal_infos/new").to route_to("personal_infos#new")
    end

    it "routes to #show" do
      expect(:get => "/personal_infos/1").to route_to("personal_infos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/personal_infos/1/edit").to route_to("personal_infos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/personal_infos").to route_to("personal_infos#create")
    end

    it "routes to #update" do
      expect(:put => "/personal_infos/1").to route_to("personal_infos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/personal_infos/1").to route_to("personal_infos#destroy", :id => "1")
    end

  end
end
