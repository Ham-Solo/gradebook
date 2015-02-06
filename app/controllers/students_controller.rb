class StudentsController < ApplicationController
  before_action :set_student, only: [:show]

  def index
    @students = Student.all
    @student = Student.find(session[:student_id])
  end

  def new
    @student = Student.new
  end

  def show
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :password)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
