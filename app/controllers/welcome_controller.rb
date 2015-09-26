class WelcomeController < ApplicationController

  # GET /welcome
  def index
    res= Api::call '/students/5'

    @student = res['student']
    @person = @student['person']
  end
end