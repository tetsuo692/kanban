class StackSerializer < ActiveModel::Serializer
  attributes :id, :title, :position
  has_one :project
end
