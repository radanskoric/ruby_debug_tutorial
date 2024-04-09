require "debug";
require_relative "lib/all"

def menu
  loop do
    puts "Please select what you want to learn about:"
    puts "1. Introduction to ruby debug gem (start here if unfamiliar with the debug gem, it covers the basics)"
    puts "2. Breakpoints (setting breakpoints, conditional breakpoints, breaking on exceptions, and more ...)"
    puts "0. Exit"

    input = gets.chomp.to_i
    case input
    when 0
      return
    when 1
      binding.break do: "break intro.rb:1"
      require_relative "intro"
    when 2
      binding.break do: "break breaking.rb:1"
      require_relative "breaking"
    else
      puts "Unrecognised option, please try again."
      redo
    end
  end
end

puts
puts '*'*60
puts "Welcome to the interactive Ruby Debug tutorial!"
menu

puts <<~FIN
               _
              | |
 ___ _ __   __| |
/ _ \\ '_ \\ / _` |
| __/ | | | (_| |
\\___|_| |_|\\__,_|
FIN

puts "\n\n If you've liked this, checkout my other articles at https://radanskoric.com/"
