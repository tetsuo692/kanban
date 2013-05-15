require 'spec_helper'

describe ProjectSerializer do
  it { should have_attribute(:title) }
  it { should have_attribute(:id) }
end