class Timer
  attr_accessor :seconds

  def initialize
    @seconds  = 0
    @minutes  = 0
    @hours    = 0
  end

  def time_string
    s = @seconds % 60
    m = @seconds / 60 % 60
    h = @seconds / 3600

    second  = sprintf('%02d', s)
    minute  = sprintf('%02d', m)
    hour    = sprintf('%02d', h)
    
    time = "#{hour}:#{minute}:#{second}"

  end

end

a = Timer.new
a.seconds = 5740
puts a.time_string
