class ParentsController < ApplicationController
  before_action :set_parent, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?
  before_action :permission?, only: [:new, :show, :edit, :update, :create, :destroy]

  def index
    @parents = Parent.all
    @parent = Parent.find(session[:parent_id])
  end

  def new
    @parent = Parent.new
  end

  def show
  end

  def edit

  end

  def create
    @parent = Parent.new(parent_params)

    if @parent.save
      session[:parent_id] = @parent.id
      redirect_to root_path, notice: 'Parent was created.'
    else
      render :new
    end
  end

  def destroy
    @parent.destroy
    redirect_to parents.url, notice: 'Parent was destroyed!'
  end

  def update
    if @parent.update(parent_params)
      session[:parent_id] = @parent.id
      redirect_to @parent, notice: 'Parent was updated.'
    else
      render :edit
    end
  end

private

  def parent_params
    params.require(:parent).permit(:name, :email, :password)
  end

  def set_parent
    @parent = Parent.find(params[:id])
  end
end
