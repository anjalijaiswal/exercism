# acronym.rb
class Acronym
  VERSION = 1
  def self.abbreviate(phrase)
    initial(phrase) + equivocal(phrase)
  end

  private

  def self.initial(phrase)
    phrase.split(' ').map do |e| 
      e[0].upcase
    end.join
  end

  def self.equivocal(phrase)
    phrase.split(' ').map do |e| 
      e.slice(0).scan(/[A-Z]/)
    end.join
  end
end