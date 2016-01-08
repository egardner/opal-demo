require 'opal'

module PlayingCard
  RANKS = %w{ 2 3 4 5 6 7 8 9 10 J Q K A }
  SUITS = %w{ hearts diamonds clubs spades }

  class Card
    include Comparable
    attr_reader :rank, :suit

    def initialize(rank:RANKS.sample, suit:SUITS.sample)
      @rank = rank.to_s
      @suit = suit
    end

    def rank_value
      RANKS.index(@rank) + 2
    end

    def suit_value
      SUITS.index(@suit)
    end

    def <=>(other_card)
      if self.rank_value < other_card.rank_value
        -1
      elsif self.rank_value > other_card.rank_value
        1
      else
        if self.suit_value < other_card.suit_value
          -1
        elsif self.suit_value > other_card.suit_value
          1
        else
          0
        end
      end
    end
  end

  class Deck
    include Enumerable
    # attr_reader :cards

    def initialize
      @cards = []
      SUITS.each do |suit|
        RANKS.each do |rank|
          card = Card.new(rank: rank, suit: suit)
          @cards << card
        end
      end
      shuffle
    end

    def each
      @cards.each do |card|
        yield card
      end
    end

    def shuffle
      shuffled_cards = @cards.sample(@cards.length)
      @cards = shuffled_cards
    end

    def deal(num)
      @cards.take(num)
    end
  end
end

