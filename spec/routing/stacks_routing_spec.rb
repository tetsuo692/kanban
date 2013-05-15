require "spec_helper"

describe StacksController do
  describe "routing" do
    it "routes to #index" do
      get("/api/v1/projects/1/stacks.json").should route_to("stacks#index", project_id: '1', format:'json')
    end


    it "routes to #show" do
      get("/api/v1/projects/1/stacks/1.json").should route_to("stacks#show", project_id: '1', id: "1", format:'json')
    end

    it "routes to #create" do
      post("/api/v1/projects/1/stacks.json").should route_to("stacks#create", project_id: '1', :format =>'json')
    end

    it "routes to #update" do
      put("/api/v1/projects/1/stacks/1.json").should route_to("stacks#update", project_id: '1',  id: "1", format:'json')
    end

    it "routes to #destroy" do
      delete("/api/v1/projects/1/stacks/1.json").should route_to("stacks#destroy", project_id: '1', id: "1", format:'json')
    end

  end
end
