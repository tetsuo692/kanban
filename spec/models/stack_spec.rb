require 'spec_helper'

describe Stack do
  it { should validate_uniqueness_of(:title) }
  it { should validate_presence_of(:title) }
  it { should belong_to(:project) }
end
