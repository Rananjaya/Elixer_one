defmodule Cards do
   def create_deck do
   ["Ace","Two","Three"]
   end
   def create_decktwo do
     ["One","Two","Three"]
   end
    def shuffle(deck) do
        Enum.shuffle(deck)
    end
    def contain?(deck,card) do
      Enum.member?(deck,card)
    end
end
  