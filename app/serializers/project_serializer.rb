class ProjectSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :updated_at

  has_many :stacks

end
