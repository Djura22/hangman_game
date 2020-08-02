@wordlist = "wordlist_1"

require 'csv'

class Hangman
  
  def initialize
  	@letters = ("a".."z").to_a
  	@word = words_lib(@wordlist).sample
  end

  def words_lib(words)
  	CSV.foreach(words) do |wnc|
  		word, clue = wnc
  	end
  end


  def begin
    puts "New Game! Your word is #{ @word.first.length } characters long!"
    word_teaser = ""
    
    @word.first.size.times do
    	word_teaser += "_ "
    end

    puts "your clue is #{ @word.last }"
  end

