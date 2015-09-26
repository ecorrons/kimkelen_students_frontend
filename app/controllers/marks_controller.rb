class MarksController < ApplicationController
  before_action :set_mark, only: [:show]

  # GET /marks
  def index
    response = Faraday.get (Settings.api.url + '/students/5/school_years'), content_type: 'application/json'
    res = JSON.parse response.body
    if params[:school_year].nil?
      @school_year = res['school_years'].last
      @school_year = @school_year['year']
    else
      @school_year = params[:school_year]
    end
    response = Faraday.get (Settings.api.url + "/students/5/marks/#{@school_year}"), content_type: 'application/json'
    res_marks = JSON.parse response.body

    @school_years = res['school_years']
    @marks = res_marks['marks']
  end

  # GET /marks/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mark
      @mark = Mark.find(params[:id])
    end
end
