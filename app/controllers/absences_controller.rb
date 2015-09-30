class AbsencesController < ApplicationController
  before_action :set_student
  before_action :set_person

  def index
    res = Api::call "/students/#{@student.id}/school_years"

    if params[:school_year].nil?
      @school_year = res['school_years'].last
      @school_year = @school_year['year'].to_s
    else
      @school_year = params[:school_year]
    end

    res_absences = Api::call "/students/#{@student.id}/absences/#{@school_year}"

    @school_years = res['school_years']
    @absences = res_absences['absences_for_year']
  end
end