class Completer
  # Completer.new
  def initialize(dictionary)
      @dictionary = dictionary
  end

  def is_word?(word_to_check)
    @dictionary.include?(word_to_check)
  end
  
  def possible_words_for(partial_word)
    @dictionary.select do |word|
        word.start_with?(partial_word)
    end
  end

end


=begin
nonsense_dictionary = ["foo", "bar"]
completer = Completer.new(nonsense_dictionary)
completer.is_word?("baz")
=end