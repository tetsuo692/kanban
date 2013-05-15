require "spec_helper"

describe ProjectsController do

  describe "routing" do

    it "routes to #index" do
      get("/api/v1/projects.json").should route_to("projects#index", format:'json')
    end

    it "routes to #show" do
      get("/api/v1/projects/1.json").should route_to("projects#show", id: "1", format:'json')
    end

    it "routes to #create" do
      post("/api/v1/projects.json").should route_to("projects#create", format:'json')
    end

    it "routes to #update" do
      put("/api/v1/projects/1.json").should route_to("projects#update", id: "1", format:'json')
    end

    it "routes to #destroy" do
      delete("/api/v1/projects/1.json").should route_to("projects#destroy", id: "1", format:'json')
    end

  end
end
