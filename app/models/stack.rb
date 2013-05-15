class Stack < ActiveRecord::Base
  belongs_to :project
  attr_accessible :position, :title
  validates_presence_of :title
  validates_uniqueness_of :title
end
