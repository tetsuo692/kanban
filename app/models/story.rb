class Story < ActiveRecord::Base
  belongs_to :stack

  validates_presence_of :title
end
