class PigLatinTranslation
  def initialize (phrase)
    @phrase = phrase
    @translated_array = []
  end

  def change_words
    @phrase.split(' ').map do |word|
      word = Word.new(word)
      translated_word = word.translate
      @translated_array << translated_word
    end
    puts @translated_array.join(' ')
  end
end
