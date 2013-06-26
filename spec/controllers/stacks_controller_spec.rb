require 'spec_helper'


describe StacksController do

  let(:project) { create(:project)}

  describe "#index" do
    let!(:stacks) {create_list(:stack, 2, project: project)}
    before(:each) do
      xhr :get, :index, ids: stacks.map(&:to_param)
    end

    specify { expect(assigns(:stacks)).to eq(stacks) }
    it { should respond_with(:success) }
  end

  describe "#show" do
    let(:stack){create(:stack, project:project)}
    before(:each) do
      xhr :get, :show, id: stack.to_param
    end

    specify { expect(assigns(:stack)).to eq(stack) }
    it { should respond_with(:success) }
  end

  describe "#create" do
    let!(:count) { project.stacks.count }
    describe 'with valid params' do

      before(:each) do
        xhr :post, :create,  stack: params_for(:stack)
      end



      specify { expect(assigns(:stack)).to be_persisted }
      specify { expect(assigns(:stack)).to be_a(Stack) }

      specify { expect(project.stacks.count).to eq(count + 1) }

      it { should respond_with(:created) }
    end

    describe 'with invalid params' do

      before(:each) do
        Stack.any_instance.stub(:save).and_return(false)
        xhr :post, :create,  stack: params_for(:stack)
      end


      specify { expect(assigns(:stack)).to_not be_persisted }
      specify { expect(assigns(:stack)).to be_a(Stack) }

      specify { expect(project.stacks.count).to eq(count) }

      it { should respond_with(:unprocessable_entity) }

    end
  end

  describe "#update" do
    let!(:stack){ create(:stack, project: project) }

    describe 'with valid params' do

      before(:each) do
        xhr :put, :update,  id: stack.to_param, stack: params_for(:stack)
      end


      specify { expect(assigns(:stack)).to eq(stack) }

      it { should respond_with(:no_content) }
    end

    describe 'with invalid params' do

      before(:each) do
        Stack.any_instance.stub(:save).and_return(false)
        xhr :put, :update,  id: stack.to_param, stack: params_for(:stack)
      end


      specify { expect(assigns(:stack)).to eq(stack) }

      it { should respond_with(:unprocessable_entity) }
    end
  end

  describe "#destroy" do
    let!(:stack){ create(:stack, project: project) }
    let!(:count){ project.stacks.count }

    before(:each) do
      xhr :delete, :destroy,  id: stack.to_param
    end



    specify { expect(project.stacks.count).to eq(count - 1) }

    it { should respond_with(:no_content) }
  end
end
