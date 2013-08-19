class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :position, :stack_id
end
