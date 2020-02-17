class Plane
  def initialize(airport)
    raise 'Airport full.' if airport.full?
    @airport = airport
    airport.planes << self
    @status = "Landed"
  end

  def status
    @status
  end

  def airport
    @airport
  end

  def take_off
    raise 'Already taken off' if status == "Flying"
    raise 'Cannot take off in rain' if airport.weather == "Raining"
    airport.planes.delete(self)
    @status = "Flying"
  end

  def land(airport)
    raise 'Already landed' if status == "Landed"
    raise 'Cannot land in rain' if airport.weather == "Raining"
    airport.planes << self
    @airport = airport
    @status = "Landed"
  end
end
