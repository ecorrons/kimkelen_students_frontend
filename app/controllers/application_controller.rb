class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_student
    # For development. Remove this method when implementing authentication
    res = Api::call "/students/904"
    @student = OpenStruct.new res['student']
  end

  def set_person
    @person = OpenStruct.new @student['person']
  end
end