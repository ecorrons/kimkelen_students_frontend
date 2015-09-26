class disciplinarySanctionsController < ApplicationController
	before_action :set_disciplinary_sanction, only: [:show]

  def index
    
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disciplinary_sanction
      @disciplinary_sanction = 
    end
end