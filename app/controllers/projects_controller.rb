class ProjectsController < ApplicationController

    def index
        @projects = Project.all
    end

    def new
        @project = Project.new
    end

    def show
        @project = find_project

    end

    def edit
        @project = find_project

    end

    def update
        @project = find_project
        @project.update(project_params(:title,:description,:funding_target))

        redirect_to project_path(@project)
    end
    
    def create
        @project = Project.create(project_params(:title,:description,:funding_target))
        
        redirect_to project_path(@project)
    end

    def destroy
         @project = find_project
         @project.destroy

         redirect_to projects_path
    end

    def add_funding
        @project = find_project
        @project.increase_funding
        @project.save

        redirect_to project_path(@project)
    end

    private

    def find_project
        Project.find(params[:id])
    end

    def project_params(*attribute)
        params.require(:project).permit(attribute)
    end

end
