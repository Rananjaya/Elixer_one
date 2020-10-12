defmodule Cards do
   def create_deck do
     values = ["Ace","Two","Three","Four","Five"]
     suits = ["Spades","Clubs","Hearts","Diamond"]

     for suit <- suits, value <- values do
       "#{value} of #{suit}"
     end
   end
     


    def deal(deck, hand_size) do
      Enum.split(deck, hand_size)
    end

    def save(deck, filename) do
      binary = :erlang.term_to_binary(deck)
      File.write(filename, binary)
    end

    def load(filename) do
      {status, binary} = File.read(filename) #read the file that returns tuple with two list. in here use pattern maching with left side.
      :erlang.binary_to_term(binary) #turn back to binary
    end
   
    def shuffle(deck) do
        Enum.shuffle(deck)
    end
    def contain?(deck,card) do
      Enum.member?(deck,card)
    end
end
  