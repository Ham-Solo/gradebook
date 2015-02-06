module ApplicationHelper

  def current_user_type
    if session[:teacher_id]
      "teacher"
    elsif session[:student_id]
      "student"
    elsif session[:parent_id]
      "parent"
    end
  end
    
end
