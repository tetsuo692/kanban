class Stack < ActiveRecord::Base
  belongs_to :project

  validates_presence_of :title
  validates_uniqueness_of :title, scope: :project_id
end
