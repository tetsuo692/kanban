require "spec_helper"

describe StacksController do
  describe "routing" do
    it "routes to #index" do
      get("/api/v1/stacks.json").should route_to("stacks#index", format:'json')
    end


    it "routes to #show" do
      get("/api/v1/stacks/1.json").should route_to("stacks#show", id: "1", format:'json')
    end

    it "routes to #create" do
      post("/api/v1/stacks.json").should route_to("stacks#create", :format =>'json')
    end

    it "routes to #update" do
      put("/api/v1/stacks/1.json").should route_to("stacks#update",  id: "1", format:'json')
    end

    it "routes to #destroy" do
      delete("/api/v1/stacks/1.json").should route_to("stacks#destroy", id: "1", format:'json')
    end

  end
end
