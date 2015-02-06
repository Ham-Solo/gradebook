class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?
  before_action :permission?, only: [:new, :show, :edit, :update, :create, :destroy]

  def index
    @teachers = Teacher.all
    @teacher = Teacher.find(session[:teacher_id])
  end

  def new
    @teacher = Teacher.new
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
      params.require(:teacher).permit(:name, :email, :password)
    end

    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

end
