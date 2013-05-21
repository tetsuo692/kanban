require 'spec_helper'

describe ProjectsController do
  describe "#index" do
    let!(:projects){ create_list(:project, 2) }
    before(:each) do
      xhr :get, :index, format: :json
    end

    specify { expect(assigns(:projects)).to eq(projects) }
    it { should respond_with(:success) }

  end

  describe "#show" do
    let(:project) { create(:project) }

    before(:each) do
      xhr :get, :show, id: project.to_param, format: :json
    end

    specify { expect(assigns(:project)).to eq(project) }
    it { should respond_with(:success) }
  end

  describe "#create" do
    describe "with valid params" do
      before(:each) do
        @count = Project.count
        xhr :post, :create, :project => attributes_for(:project)
      end

      specify { expect(assigns(:project)).to be_persisted }
      specify { expect(assigns(:project)).to be_a(Project) }

      it { expect(Project.count).to eq(@count + 1) }

      it { should respond_with(:created) }

    end

    describe "with invalid params" do
      before(:each) do
        @count = Project.count
        Project.any_instance.stub(:save).and_return(false)
        xhr :post, :create, :project => attributes_for(:project)
      end
      specify { expect(assigns(:project)).to be_a_new(Project) }

      it { expect(Project.count).to eq(@count) }

      it { should respond_with(:unprocessable_entity) }
    end
  end

  describe "#update" do
    let(:project) { create(:project) }
    describe "with valid params" do
      before(:each) do
        xhr :put, :update, id: project.to_param, project: attributes_for(:project)
      end
      specify { expect(assigns(:project)).to eq(project) }
      it { should respond_with(:no_content) }
    end

    describe "with invalid params" do
      before(:each) do
        Project.any_instance.stub(:save).and_return(false)
        xhr :put, :update, id: project.to_param, project: attributes_for(:project)
      end
      specify { expect(assigns(:project)).to eq(project) }
      it { should respond_with(:unprocessable_entity) }
    end
  end

  describe "#destroy" do
    let!(:count) { Project.count }
    let(:project) { create(:project) }
    before(:each) do
      xhr :delete, :destroy, id: project.to_param
    end

    specify { expect(Project.count).to eq(count) }

    it { should respond_with(:no_content) }
  end
end