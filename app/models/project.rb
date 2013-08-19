class Project < ActiveRecord::Base
  # attr_accessible :title
  validates_presence_of :title
  validates_uniqueness_of :title

  has_many :stacks
  has_many :stories, through: :stacks
end
