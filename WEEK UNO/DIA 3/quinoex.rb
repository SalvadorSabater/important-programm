require 'time'

class Device
  def initialize operative_system, inches 
    @operative_system = operative_system
    @inches = inches
  end
  def show_time
    time = Time.now
    puts time.hour.to_s + ":" + time.min.to_s + ":" + time.sec.to_s
  end
end

module TakePhoto
  def take_photo
    puts "Photo taken in #{@operative_system}"
  end
end

class Agenda
  def initialize
    @agenda = []
  end
  def add_contact contact
    @agenda.push contact
  end
  def show_contacts
    @agenda.each do |contact|
      puts contact
    end
  end
  def find_contact contact_name
    @agenda.find do |contact|
      contact == contact_name
    end
  end
end

class Phone < Device
  include TakePhoto 

  def initialize operative_system, inches, agenda 
    super operative_system, inches
    @agenda = agenda
  end
  def add_contact_to_agenda contact
    @agenda.add_contact contact
  end
  def show_contacts_from_agenda
    @agenda.show_contacts
  end
  def call_contact_from_agenda contact_name
    @agenda.find_contact contact_name
  end
end

class SmartWatch < Device
  include TakePhoto

  def show_time
    time = Time.now
    puts "***" + time.year.to_s + "-" + time.month.to_s + "-" + time.day.to_s + " " + time.hour.to_s + ":" + time.min.to_s + ":" + time.sec.to_s + "***"
  end
end

class Laptop < Device
  def initialize operative_system, inches, touchable 
    super operative_system, inches
    @touchable = touchable
  end
end

class Microwave

  def heat_food food
    puts "the #{food} is hot"
  end
  
  def show_time
    time = Time.now
    puts time.hour.to_s + ":" + time.min.to_s + ":" + time.sec.to_s
  end
end

agenda = Agenda.new
xperia_z = Phone.new "Android", 5.5, agenda
macbook = Laptop.new "IOS", 13, false
iwatch = SmartWatch.new "iWatch", 3
my_microwave = Microwave.new 

devices_array = [xperia_z, macbook, iwatch, my_microwave]

devices_array.each do |device|
  device.show_time
end
xperia_z.take_photo