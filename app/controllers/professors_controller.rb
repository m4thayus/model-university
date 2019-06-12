class ProfessorsController < ApplicationController
    before_action :find_professor, only: [:show, :edit, :update, :destroy]
    
    def index
        @professors = Professor.all
    end
    
    def show
    end
    
    def new
        @professor = Professor.new
    end
    
    def create
        @professor = Professor.create(
            professor_params(:name, :field)
        )
        redirect_to @professor
    end
    
    def edit
    end
    
    def update
        @professor.update(
            professor_params(:name, :field)
        )
        redirect_to @professor
    end
    
    def destroy
        @professor.destroy
        redirect_to professors_path
    end
    
    private
    
        def find_professor
            @professor = Professor.find(params[:id])
        end
    
        def professor_params(*args)
            params.require(:professor).permit(*args)
        end
    
end
