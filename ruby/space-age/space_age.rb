# space_age.rb
class SpaceAge 
  YEAR = 31_557_600
  SPACE_YEARS = {
    earth:   1.0,
    mercury: 0.2408467,
    venus:   0.61519726,
    mars:    1.8808158,
    jupiter: 11.862615,
    saturn:  29.447498,
    uranus:  84.016846,
    neptune: 164.79132
  }
  def initialize(sec)
    @sec = sec.to_f
  end
  
  SPACE_YEARS.each do |planet, divider|
    define_method "on_#{planet}" do
      @sec / YEAR / divider
    end
  end

  def seconds
    @sec
  end
end
