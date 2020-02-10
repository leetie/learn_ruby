class Timer
  attr_accessor :seconds, :time_string
  def initialize(seconds = 0)
    @seconds = seconds
  end

  

  def time_string
    @time_string = Time.at(seconds).utc.strftime("%T")
  end
  
  
end

