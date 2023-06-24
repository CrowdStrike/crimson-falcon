# prompt.rb
require "io/console"

module Prompt
  # Prompts the user for input with a message and returns the user's input as a string.
  # If noecho is set to true, the user's input will not be displayed on the screen.
  # If the user presses Ctrl+C, the program will exit.
  #
  # @param message [String] The message to display to the user.
  # @param noecho [Boolean] Whether or not to display the user's input on the screen.
  # @return [String] The user's input as a string.
  def self.ask(message, noecho = false)
    print "#{message}"
    if noecho
      input = STDIN.noecho(&:gets).chomp
    else
      input = gets.chomp
    end
    puts # Adds a newline after the user's input
    input
  # If the user presses Ctrl+C, exit the program
  rescue Interrupt
    puts "\nExiting..."
    exit
  end
end
