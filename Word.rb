class Word
  VOWELS = %w[a e i o u]

  def initialize(word)
    @word = word
  end

  #provide the pig latin translation
  def translate
      if starts_with_vowel? == true
        vowel_translate
      else
        consonant_translate
      end
  end

  private

  def vowel_translate
    @word + 'way'
  end

  def first_vowel_index
    letters = []
    letters << @word.split('')
    index = letters[0].index{|letter| VOWELS.include?(letter) == true}
    if index == nil
      index = @word.index'y'
    end
    index
  end

  def consonant_translate
    @word[first_vowel_index..-1] + @word[0...first_vowel_index] + 'ay'
  end

  def starts_with_vowel?
    VOWELS.include?(@word[0].downcase)
  end
end
