require 'spec_helper'

describe 'Stacks' do
  let(:project) { create(:project) }
  let(:stack) { create(:stack, project: project) }
  describe 'GET /stacks' do
    it 'works! (now write some real specs)' do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      xhr :get, stacks_path(format: 'json', ids: [stack.to_param])
      response.status.should be(200)
    end
  end
end
