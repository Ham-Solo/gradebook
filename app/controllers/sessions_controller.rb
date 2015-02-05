class SessionsController < ApplicationController

  def new
  end

  def create
    if request.post?
    t = Teacher.find_by_email(params[:email])
    if t && t.authenticate(params[:password])
      session[:teacher_id] = t.id
      redirect_to root_path, notice: "You've logged in."
    else
      redirect_to root_path, notice: "Wrong email or password."
    end
  end
  end

  def destroy
    session[:teacher_id] = nil
    redirect_to root_path, notice: "You've logged out."
  end
end
