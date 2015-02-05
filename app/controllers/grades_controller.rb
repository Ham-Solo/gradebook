class GradesController < ApplicationController
  def index
    @grades = Grade.all
  end

  def edit
  end

  def destroy
  end

  def create
  end

  def show
  end

  def update
  end

  def new
    @grade = Grade.new
  end

  private def grade_params
    params.require(:grade).permit(:assignment, :grade)
  end
end
