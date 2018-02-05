class Hand
  attr_reader :value, :dealt_card

  def initialize
    @dealt_card = []
    @value = 0
  end

  def deal(card)
    dealt_card_value = card.value
    if ((dealt_card_value == 11) && ((@value + dealt_card_value) > 21))
      dealt_card_value = 1
    end
    @value += dealt_card_value
    @dealt_card << card
  end
end
