require_relative "card"
require_relative "deck"
require_relative "hand"

player_decision = nil

player = Hand.new
dealer = Hand.new
deck = Deck.new
deck.shuffle

player.deal(deck.draw)
puts "Player's first card is: #{player.dealt_card.last}"
player.deal(deck.draw)
puts "Player's second card is: #{player.dealt_card.last}"
puts "\nPlayer's total is: #{player.value}"
if player.value == 21
  puts "\n***Blackjack!***"
end
puts "\nWould you like to hit or stand? (h/s)"
player_decision = gets.chomp

while player_decision != "s"
  player.deal(deck.draw)
  puts "Player is dealt: #{player.dealt_card.last}"
  puts "\nPlayer's total is: #{player.value}"
  if player.value > 21
    puts "Bust! You lose."
    break
  end
  puts "\nWould you like to hit or stand? (h/s)"
  player_decision = gets.chomp
end

if (player_decision == "s")
  dealer.deal(deck.draw)
  puts "Dealer's first card is: #{dealer.dealt_card.last}"
  dealer.deal(deck.draw)
  puts "Dealer's second card is: #{dealer.dealt_card.last}"
  puts "\nDealer total is: #{dealer.value}"
  while dealer.value < 17
    dealer.deal(deck.draw)
    puts "\nDealer was dealt: #{dealer.dealt_card.last}"
    puts "\nDealer total is: #{dealer.value}"
    if dealer.value > 21
      dealer_bust = true
      puts "\nDealer busts."
      break
    end

end


if player.value < dealer.value && !dealer_bust
  puts "Dealer wins!"
elsif player.value == dealer.value
  puts "It's a tie!"
else
  puts "\nPlayer's total is #{player.value}"
  puts "Player wins!"
  end
end
