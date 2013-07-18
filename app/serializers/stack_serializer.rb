class StackSerializer < ActiveModel::Serializer
  attributes :id, :title, :position, :project_id
end
