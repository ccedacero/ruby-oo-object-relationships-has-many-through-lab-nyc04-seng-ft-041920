class Patient
  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    save
  end

  attr_accessor :name, :date

  def new_appointment(doctor, date)
    new_app = Appointment.new(date, self, doctor)
    new_app
  end

  def appointments
    Appointment.all.select do |app|
      app.patient.name == self.name
    end
  end

  def doctors
    self.appointments.collect { |doc| doc.doctor }
  end
end
