class WelcomeController < ApplicationController
  def index
    @clinics = Clinic.all
  end

  def show
    @clinics = Clinic.where(location: params[:location])

    @clinics = @clinics.combined
  end
end
