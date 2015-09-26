class AbsencesController < ApplicationController
  # GET /absences

  def index
    res = Api::call '/students/2003/school_years'

    if params[:school_year].nil?
      @school_year = res['school_years'].last
      @school_year = @school_year['year']
    else
      @school_year = params[:school_year]
    end

    res_absences = Api::call "/students/2003/absences/#{@school_year}"

    @school_years = res['school_years']
    @absences = res_absences['absences']
  end
end