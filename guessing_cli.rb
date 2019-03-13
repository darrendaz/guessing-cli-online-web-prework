require "pry"
def run_guessing_game
  loop_continue = true
  while loop_continue do
    number = rand(6).to_s
    puts "Guess a number between 1 and 6:"
    guess = gets.chomp
    if guess == number
      puts "You guessed correct: #{guess}!"
    elsif guess.downcase() == "exit"
      puts "Exiting game..."
      loop_continue = false
    else
      puts "You guessed incorrect. The number was: #{number}. "
    end
  end
  binding.pry
end