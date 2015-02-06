class StudentsController < ApplicationController
  before_action :set_student, only: [:show]
  before_action :logged_in?
  # before_action :redirect_path, only: [:new, :edit, :create, :destroy]

  def index
    @students = Student.all
    @student = Student.find(session[:student_id])
  end

  def new
    @student = Student.new
  end

  def show

  end

  def edit

  end

  def create
    @student = Student.new(student_params)

    if @student.save
      session[:student_id] = @student.id
      redirect_to root_path, notice: 'Student was created.'
    else
      render :new
    end
  end

  def update
    if @student.update(student_params)
      session[:student_id] = @student.id
      redirect_to @student, notice: 'Student was updated.'
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students.url, notice: 'Student was destroyed!'
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :password)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
