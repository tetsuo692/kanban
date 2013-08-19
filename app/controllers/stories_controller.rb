class StoriesController < ApplicationController
  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all

    render json: @stories
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
    @story = Story.find(params[:id])

    render json: @story
  end

  # POST /stories
  # POST /stories.json
  def create
    @story = Story.new(params[:story])

    if @story.save
      render json: @story, status: :created, location: @story
    else
      render json: @story.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    @story = Story.find(params[:id])

    if @story.update(params[:story])
      head :no_content
    else
      render json: @story.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story = Story.find(params[:id])
    @story.destroy

    head :no_content
  end
end
