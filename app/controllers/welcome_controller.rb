class WelcomeController < ApplicationController
  before_action :set_student, only: [:index]

  # GET /welcome
  def index
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.first
  end
end