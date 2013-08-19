require 'spec_helper'

describe Story do
  it { should validate_presence_of(:title) }
  it { should belong_to(:stack) }
  it { should have_one(:project).through(:stack) }
end
