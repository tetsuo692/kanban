require 'spec_helper'

describe Project do
  it { should validate_uniqueness_of(:title) }
  it { should validate_presence_of(:title) }
  it { should have_many(:stacks) }
  it { should have_many(:stories).through(:stacks) }
end
