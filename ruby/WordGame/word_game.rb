#Word Game Program#

#Setup/Driver Code:
#Use a class with read attributes to enable player 1 to instantiate, then player 2 uses those read-only instance variables
#Guesses are pushed into arrays (wrong guesses and correct guesses separated into different arrays) to keep count and track of guesses
#repeated guesses can be solved by checking if the wrong guessed letter was used before

#after player 2 makes a guess, the feedback prints for the user if the guessed letter was part of the word.
#this message includes where the letter is positioned in the word
#display how many guess attempts the user has remaining
#if all the letters in the word are guessed, then the game ends with a congratulatory message.

#****

class WordGame
  attr_reader :word, :guesses, :wrong, :over

  def initialize(word)
    # @word = []
    @wrong_guesses = []
    @guesses_remaining = word.length
    # word.each_char { |c| @word.push({ letter: c, found: false })}
    @word = word.chars
    @over = false
    @game_status = word.chars.map {|letter| letter = "_"}
  end

#check if the guessed letter is in the word
  def check_letter(guess)
    if @word.include? guess
      puts "You chose wisely!"
      #find which position(s) the guess is in the word array
      correct_index_arr = @word.each_index.select { |i| @word[i] == guess }
      # rebuild @game_status with the correct letter guessed into that position of the word
      correct_index_arr.each do |index|
        @game_status[index] = guess
      end
    # if they don't make guess and put an empty response
    elsif guess.empty?
      puts "You didn't make a guess.  Try again."
    # if the user guesses the same wrong letter again
    elsif @wrong_guesses.include? guess
      puts "You guessed that before! Try again."
    else
      @guesses_remaining -= 1
      puts "wrong guess, the guesses remaining: #{@guesses_remaining}"
      @wrong_guesses.push(guess)
    end
  end
  # update the game_status for the user
  def game_status
    puts
    game_status_str = @game_status.join(' ')
    puts game_status_str
  end

  def check_word
    if !@game_status.include? "_"
      puts "You guessed the word! Congrats!"
      @over = true
    end
  end

  def check_guesses
    if @guesses_remaining == 0
      puts "Ooops. You've run out of guesses!"
      @over = true
    end
  end
end

#Driver Code

puts "Lets play a guess-the-word game!"
puts "Player one, please enter your word!"
word = gets.chomp
game = WordGame.new(word)
# clear some space to hide Player 1's word
30.times {puts }
game.game_status

while game.over == false
  puts "Enter a letter (only one letter please)!"
  guess = gets.chomp
  game.check_letter(guess)
  game.check_word
  game.game_status
  game.check_guesses
end
