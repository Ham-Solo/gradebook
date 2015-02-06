class ParentsController < ApplicationController
  before_action :set_parent, only: [:show]

  def index
    @parents = Parent.all
    @parent = Parent.find(session[:parent_id])
  end

  def new
    @parent = Parent.new
  end

  def show
  end

private

  def parent_params
    params.require(:parent).permit(:name, :email, :password)
  end

  def set_parent
    @parent = Parent.find(params[:id])
  end
end
