class Story < ActiveRecord::Base
  belongs_to :stack
  has_one :project, through: :stack
  validates_presence_of :title
end
