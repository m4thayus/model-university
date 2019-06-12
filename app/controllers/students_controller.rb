class StudentsController < ApplicationController
    before_action :find_student, only: [:show, :edit, :update, :destroy]
    
    def index
        @students = Student.all
    end
    
    def show
    end
    
    def new
        @student = Student.new
    end
    
    def create
        @student = Student.create(
            student_params(:name, :major)
        )
        @student.year = Time.now.year
        @student.save
        redirect_to @student
    end
    
    def edit
    end
    
    def update
        @student.update(
            student_params(:name, :major)
        )
        redirect_to @student
    end
    
    def destroy
        @student.destroy
        redirect_to students_path
    end
    
    private
    
        def find_student
            @student = Student.find(params[:id])
        end
    
        def student_params(*args)
            params.require(:student).permit(*args)
        end
    
end
