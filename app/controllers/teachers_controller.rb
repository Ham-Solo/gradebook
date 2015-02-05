class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  def index
    @teachers = Teacher.all
  end

  def new
    @techer = Teacher.new
  end

  def edit
  end

  def destroy
    @teacher.destroy
    redirect_to teachers.url, notice: 'Teacher was destroyed!'
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      session[:teacher_id] = @teacher.id
      redirect_to root_path, notice: 'Teacher was created.'
    else
      render :new
    end
  end

  def show
  end

  def update
    if @teacher.update(teacher_params)
      session[:teacher_id] = @teacher.id
      redirect_to @teacher, notice: 'Teacher was updated.'
    else
      render :edit
    end
  end

  private
    def teacher_params
      params.require(:teacher).permit(:name, :email, :password, :password_confirmation)
    end

    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

end
