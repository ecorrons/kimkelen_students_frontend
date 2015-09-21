class MarksController < ApplicationController
  before_action :set_mark, only: [:show]

  # GET /marks
  def index
    @marks = Mark.all
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
