class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def decr_life
    @lives -= 1
  end

  def remaining_lives
    @lives
  end

  def dead?
    @lives <= 0
  end
end
