require "pry"
def run_guessing_game
  loop_continue = true
  while loop_continue do
    number = rand(1..6).to_s
    puts "Guess a number between 1 and 6:"
    guess = gets.chomp
    if guess == number
      puts "You guessed the correct number!"
      puts "Let's go again!"
    elsif guess.downcase() == "exit"
      puts "Goodbye!"
      loop_continue = false
    else
      puts "The computer guessed #{number}. "
    end
  end
end