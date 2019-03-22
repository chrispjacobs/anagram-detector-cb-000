# Your code goes here!
class Anagram
    @anagrams_array = []
    @word = String.new
  def initialize(word)
    @word = word
  end
  def match(input_array)
    input_array.each do |possible_anagram|
      if possible_anagram.split("").sort == @word.split("").sort && possible_anagram != @word
        @anagrams_array << possible_anagram
      end
    end
    @anagrams_array
  end
end

hello = Anagram.new("hello")
puts hello.match([]"trekking", "hiking", "lehol", "stop", "stupid", "olleh"])
