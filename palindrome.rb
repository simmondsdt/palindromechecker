require 'pry'
require 'palindrome'
require 'colorize'
require 'colorized_string'


def palindrome
  puts ColorizedString["Put a word, we can check if it's a palindrome or not, type (x) to quit"].colorize(:black)
  word = gets.strip.downcase
  if word == 'x'
    puts ColorizedString["Goodbye"].colorize(:red)
    exit
  else
    check = word.palindrome?
    case check
    when true
      puts ColorizedString["#{word} a palindrome!"].colorize(:blue)
    when false
      puts ColorizedString["#{word} is not a palindrome!"].colorize(:red)
    else
      puts "Please put a valid word"
    end
    palindrome
  end
end
palindrome
