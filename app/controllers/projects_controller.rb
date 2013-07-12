class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all

    render json: @projects
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])

    render json: @project
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = ProjectService.new(project_params)

    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: {errors: {title: 'blank'}}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(project_params)
      head :no_content
    else
      render json: @project.errors.to_json, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    head :no_content
  end

  private
  def project_params
    params.require(:project).permit(:title)
  end
end
