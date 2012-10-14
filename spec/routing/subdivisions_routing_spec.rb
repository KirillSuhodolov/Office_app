require "spec_helper"

describe SubdivisionsController do
  describe "routing" do

    it "routes to #index" do
      get("/subdivisions").should route_to("subdivisions#index")
    end

    it "routes to #new" do
      get("/subdivisions/new").should route_to("subdivisions#new")
    end

    it "routes to #show" do
      get("/subdivisions/1").should route_to("subdivisions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/subdivisions/1/edit").should route_to("subdivisions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/subdivisions").should route_to("subdivisions#create")
    end

    it "routes to #update" do
      put("/subdivisions/1").should route_to("subdivisions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/subdivisions/1").should route_to("subdivisions#destroy", :id => "1")
    end

  end
end
