class ProjectsController < ApplicationController
  def show
    @project = Project.find(id_params[:id])
  end

  def index
    @projects = Project.all
  end

  private

    def id_params
      params.permit(:id)
    end
end
