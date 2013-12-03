require 'pry'
require_relative 'PigLatinTranslation'
require_relative 'Word'


# puts 'Please enter a phrase to be translated'
# phrase = gets.chomp
# phrase = PigLatinTranslation.new(phrase)
puts "Please enter phrase to translate"
phrase = gets.chomp
phrase = PigLatinTranslation.new(phrase)
phrase.change_words

##split phrase into words, add to array
##determine if it starts with starts_with_vowel
##if so add way to the end
