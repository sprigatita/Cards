defmodule Cards do

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    #Restituisce un nested array
    deck = for suit <- suits do
      for value <- values do
        "#{value} of #{suit}"
      end
    end

    #Unisce gli array interni in un unico array di stringhe (in questo caso)
    List.flatten(deck)

  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, hand) do
    Enum.member?(deck, hand)
  end


end
