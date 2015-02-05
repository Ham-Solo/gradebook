class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
  end

  private def student_params
    params.require(:student).permit(:name, :email, :password)
  end
end
