class ProjectSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :updated_at

  has_many :stacks

  def stack_ids
    {count: object.stacks.count ,url: "projects/#{object.to_param}/stacks"}
  end
end
