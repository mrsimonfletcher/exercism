class Clock
  def self.at(hour, minutes)
    Clock.new(hour, minutes)
  end

  def initialize(hour=0, minutes=0)
    @internal_minutes = hour * 60 + minutes
  end

  def to_s
    format '%02d:%02d', hours, minutes
  end

  def +(minutes)
    @internal_minutes += minutes
    self
  end

  def ==(new_time)
    to_s == new_time.to_s
  end

  private

  def hours
    @internal_minutes / 60 % 24
  end

  def minutes
    @internal_minutes % 60
  end
end
