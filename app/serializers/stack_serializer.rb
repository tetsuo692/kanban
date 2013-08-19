class StackSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :position, :project_id
  has_many :stories
end
