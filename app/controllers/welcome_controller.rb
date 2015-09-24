class WelcomeController < ApplicationController

  # GET /welcome
  def index
    response = Faraday.get (Settings.api.url + '/students/2003'), content_type: 'application/json'

    res = JSON.parse response.body
    @student = res['student']
    @person = @student['person']
  end
end