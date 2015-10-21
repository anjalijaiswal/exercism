# robot_name.rb
class Robot
  def name
    @name ||= ('A'..'Z').to_a.shuffle[0,2].join + rand(100..999).to_s
  end

  def reset
    @name = nil
  end
end