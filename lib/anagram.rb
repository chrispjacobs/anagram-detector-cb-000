# Your code goes here!
class Anagram
    @anagrams_array = []
    @word = String.new
  def initialize(word)
    @word = word
  end
  def self.match(input_array)
    input_array.each do |possible_anagram|
      if possible_anagram.split("").sort == @word.split("").sort && possible_anagram != @word
        @anagrams_array << possible_anagram
      end
    end
  end
end
