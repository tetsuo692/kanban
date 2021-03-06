class Stack < ActiveRecord::Base
  belongs_to :project
  has_many :stories
  validates_presence_of :title
  validates_uniqueness_of :title, scope: :project_id

  acts_as_list scope: :project
end
