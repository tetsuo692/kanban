class ProjectSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title
  has_many :stacks
end
