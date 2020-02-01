class DoctorsController < ApplicationController
  helper_method :doctors, :doctor, :numbers_to_words

  def index; end

private
  
  def doctors
  	doctors ||= Doctor.preload(:specializations)
  end

  def doctor
  	doctor ||= Doctor.find(doctor_params[:id])
  end

  def doctor_params
  	params.permit(:id, :name, :booksy_url, :lek_url, :specialization)
  end

  def numbers_to_words(num)
    numbbas = {
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
    numbbas[num]
  end
end