require "spec_helper"

describe RepotsController do
  describe "routing" do

    it "routes to #index" do
      get("/repots").should route_to("repots#index")
    end

    it "routes to #new" do
      get("/repots/new").should route_to("repots#new")
    end

    it "routes to #show" do
      get("/repots/1").should route_to("repots#show", :id => "1")
    end

    it "routes to #edit" do
      get("/repots/1/edit").should route_to("repots#edit", :id => "1")
    end

    it "routes to #create" do
      post("/repots").should route_to("repots#create")
    end

    it "routes to #update" do
      put("/repots/1").should route_to("repots#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/repots/1").should route_to("repots#destroy", :id => "1")
    end

  end
end
