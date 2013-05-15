class StacksController < ApplicationController
  before_filter :find_project
  # GET /stacks
  # GET /stacks.json
  def index
    @stacks = Stack.all

    render json: @stacks
  end

  # GET /stacks/1
  # GET /stacks/1.json
  def show
    @stack = Stack.find(params[:id])

    render json: @stack
  end

  # POST /stacks
  # POST /stacks.json
  def create
    @stack = @project.stacks.build(params[:stack])

    if @stack.save
      render json: @stack, status: :created, location: [@project, @stack]
    else
      render json: @stack.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stacks/1
  # PATCH/PUT /stacks/1.json
  def update
    @stack = Stack.find(params[:id])

    if @stack.update_attributes(params[:stack])
      head :no_content
    else
      render json: @stack.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stacks/1
  # DELETE /stacks/1.json
  def destroy
    @stack = Stack.find(params[:id])
    @stack.destroy

    head :no_content
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end
end
