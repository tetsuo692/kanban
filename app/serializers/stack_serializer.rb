class StackSerializer < ActiveModel::Serializer
  attributes :id, :title, :position
  # belongs_to :project
end
