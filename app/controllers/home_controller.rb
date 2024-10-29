class HomeController < ApplicationController
  def index
    @authors = Author.all
    @books = Book.all
    @users = User.all
    @profiles = Profile.all
    @doctors = Doctor.all
    @patients = Patient.all
    @physicians = Physician.all
    @appointments = Appointment.all
    @suppliers = Supplier.all
    @accounts = Account.all
  end
end
