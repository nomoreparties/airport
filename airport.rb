class Airport
  def initialize
    @capacity = 3
    @weather = ""
  end

  def weather
    @weather
  end

  def capacity
    @capacity
  end

  def planes
    @planes ||= []
  end

  def planes_count
    planes.count
  end

  def full?
    planes_count == capacity
  end

  def check_weather
    @weather = rand(1..100)
    if @weather < 75
      @weather = "Sunny"
      self
    else
      @weather = "Raining"
      self
    end
    puts @weather
  end

end
