class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointments.all.select {|appointment| apointment.doctor == self}
  end

  def patients
    Appointments.all.select {|appointment| apointment.doctor == self}
  end
end
