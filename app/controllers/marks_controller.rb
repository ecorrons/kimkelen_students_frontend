class MarksController < ApplicationController
  before_action :set_student
  before_action :set_person

  # GET /marks
  def index
    res = Api::call "/students/#{@student.id}/school_years"

    if params[:school_year].nil?
      @school_year = res['school_years'].last
      @school_year = @school_year['year'].to_s
    else
      @school_year = params[:school_year]
    end

    res_marks = Api::call "/students/#{@student.id}/marks/#{@school_year}"

    @school_years = res['school_years']
    @marks = res_marks['marks']
  end
end