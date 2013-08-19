class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :position
  has_one :stack
end
