require "opal"
require "opal-jquery"
require_relative "cards.rb"

deck = PlayingCard::Deck.new
cards = deck.deal(5)

Document.ready? do
  card_container = Element.find('#cards')
  cards.each do |card|
    card_container.append(%Q(<li class="card">#{card.rank} #{card.suit.upcase}</li>))
  end
end


