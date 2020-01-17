class Dashboard::DoctorsController < ApplicationController
  before_action :authenticate_user!
  helper_method :doctor

  def index; end

  def show; end
  
  def create
    doc = Doctor.create!(doctor_params) 
    # unless Doctor.all.where(name: doctor_params[:name]).any?
    redirect_to dashboard_doctor_path(doc)
  end

  def delete
    Doctor.find(doctor_params[:id]).destroy!
  end


  private

    def doctor
      doctor ||= Doctor.find(params[:id])
    end

    def doctor_params 
      params.require(:doctor).permit(:name, :booksy_url, :lek_url, :profile_picture)
    end
end