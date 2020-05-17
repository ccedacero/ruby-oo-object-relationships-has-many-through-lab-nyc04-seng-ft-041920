class Appointment
  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  attr_accessor :date, :patient, :doctor, :name

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    save
  end
end
