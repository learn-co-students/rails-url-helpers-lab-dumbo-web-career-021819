class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student_status = Student.find(params[:id]).active
    @student = Student.find(params[:id])
      if @student_status then  
     @student.deactivate
     else 
      @student.activate
      end 
    redirect_to "/students/#{params[:id]}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end