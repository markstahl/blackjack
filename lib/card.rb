class Card

  attr_reader :rank, :suit

  def initialize rank, suit
    @rank = rank
    @suit = suit
  end

  def value
    case @rank
    when "J"
      10
    when "Q"
      10
    when "K"
      10
    when "A"
      11
    else
      @rank
    end
  end

  def to_s
    "#{rank} #{suit}"
  end

end
