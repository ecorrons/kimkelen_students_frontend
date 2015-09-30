class DisciplinarySanctionsController < ApplicationController
  before_action :set_student
  before_action :set_person

  # GET /disciplinary_sanctions
  def index
    res = Api::call "/students/#{@student.id}/school_years"

    if params[:school_year].nil?
      @school_year = res['school_years'].last
      @school_year = @school_year['year'].to_s
    else
      @school_year = params[:school_year]
    end

    res_disciplinary_sanctions = Api::call "/students/#{@student.id}/disciplinary_sanctions/#{@school_year}"

    @school_years = res['school_years']
    @disciplinary_sanctions = res_disciplinary_sanctions['disciplinary_sanctions_for_year']
  end
end