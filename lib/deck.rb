require_relative "card"

class Deck

  attr_reader :cards

  SUITS = %w[♥ ♠ ♦ ♣] #used %w so it would print a single suit at random with a random card
  RANKS = [*2..10, "J", "Q", "K", "A"]

  def initialize
    @cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
    def shuffle
      @cards.shuffle!
    end
    def draw
      @cards.shift
    end
  end
end
