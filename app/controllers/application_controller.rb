class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    if session[:teacher_id]
      Teacher.where(id: session[:teacher_id]).first
    elsif session[:student_id]
      Student.where(id: session[:student_id]).first
    elsif session[:parent_id]
      Parent.where(id: session[:parent_id]).first
    end
  end

  helper_method :current_user
end
