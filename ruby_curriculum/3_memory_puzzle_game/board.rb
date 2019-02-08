require_relative 'card.rb'

class Board

  LETTERS = ("A".."Z").to_a.shuffle

  attr_accessor :deck

  def initialize(deck_size=10)
    @deck = Array.new(deck_size)
    populate_deck
  end

  def populate_deck 
    @deck.each_index do |idx| 
      @deck[idx] = Card.new(populate_letters[idx], idx)
    end
    self.shuffle_deck
  end

  def populate_letters
    LETTERS.take(@deck.count/2) * 2
  end

  def shuffle_deck 
    @deck.shuffle!
  end

  def render
    @deck.map { |card| card.value? }
  end

  def delete_pairs
    @deck.each_index do |card_index| 
      if @deck[card_index].face_up 
         @deck.delete(@deck[card_index]) 
      end
    end
  end

  def select_card(player_input)
    @deck.select { |card| card.numerical_value == player_input }
  end

   def get_card_pos(card)
     @deck.find_index(self.select_card(card).first)
   end

  def reset
    @deck.each { |card| card.hide }
  end
  
  def clear
    system('clear')
    puts self.render.join(" ")
    puts self.display_grid.join(" ")
    puts "\n"
  end

  def display_grid 
    @deck.map { |card| card.numerical_value }
  end

end


