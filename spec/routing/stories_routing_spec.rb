require "spec_helper"

describe StoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/api/v1/stories.json").should route_to("stories#index", format:'json')
    end

    it "routes to #show" do
      get("/api/v1/stories/1.json").should route_to("stories#show", :id => "1", format:'json')
    end

    it "routes to #create" do
      post("/api/v1/stories.json").should route_to("stories#create", format:'json')
    end

    it "routes to #update" do
      put("/api/v1/stories/1.json").should route_to("stories#update", :id => "1", format:'json')
    end

    it "routes to #destroy" do
      delete("/api/v1/stories/1.json").should route_to("stories#destroy", :id => "1", format:'json')
    end

  end
end
