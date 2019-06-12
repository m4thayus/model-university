class CoursesController < ApplicationController
    before_action :find_course, only: [:show, :edit, :update, :destroy]
    
    def index
        @courses = Course.all
    end
    
    def show
    end
    
    def new
        @course = Course.new
    end
    
    def create
        @course = Course.create(
            course_params(:name, :description, :time)
        )
        redirect_to @course
    end
    
    def edit
    end
    
    def update
        @course.update(
            course_params(:name, :description, :time)
        )
        redirect_to @course
    end
    
    def destroy
        @course.destroy
        redirect_to courses_path
    end
    
    private
    
        def find_course
            @course = Course.find(params[:id])
        end
    
        def course_params(*args)
            params.require(:course).permit(*args)
        end
    
end
