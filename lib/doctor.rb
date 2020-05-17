require "pry"

class Doctor
  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    save
  end

  def appointments
    Appointment.all.select { |app| app.doctor == self }
    # binding.pry
  end

  def new_appointment(patient, date)
    new_app = Appointment.new(date, patient, self)
  end

  def patients
    self.appointments.collect do |apps|
      apps.patient
    end
  end
end
