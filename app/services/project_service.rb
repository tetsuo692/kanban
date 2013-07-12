class ProjectService
  def self.new(params = {})
    project = Project.new(params)
    ["New","To-do", "In progress", "Done"].each do |title|
      project.stacks.build(title: title)
    end

    project
  end
end