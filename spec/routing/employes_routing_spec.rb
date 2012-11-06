require "spec_helper"

describe EmployesController do
  describe "routing" do

    it "routes to #index" do
      get("/employes").should route_to("employes#index")
    end

    it "routes to #new" do
      get("/employes/new").should route_to("employes#new")
    end

    it "routes to #show" do
      get("/employes/1").should route_to("employes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/employes/1/edit").should route_to("employes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/employes").should route_to("employes#create")
    end

    it "routes to #update" do
      put("/employes/1").should route_to("employes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/employes/1").should route_to("employes#destroy", :id => "1")
    end

  end
end
