class Patient
  attr_accessor :name

  @@all = []

  def self.all

  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
  end
end
