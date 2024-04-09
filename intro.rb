START_HERE = <<~EXPLANATION
  Welcome to an interactive intro to the Ruby debug gem basics. Start by reading this. :)
  You will learn the basics of using the Ruby debug gem by following instructions in the code itself.
  First learn the basics of navigating.

  To get to the next command type 'next' and press enter.
EXPLANATION

# This part left blank to keep the next step out of the initially visible text.



SHORTCUTS = <<~EXPLANATION
  Well done! Next runs the command and stops at the next command.
  All of the commands also have a shortcut version.
  Try typing just 'n' and pressing enter.
EXPLANATION





STEPPING = <<~EXPLANATION
  Good. You will be using "next" or "n" very often when debugging.
  Another command you will use very often is "step" or "s".
  Unlike 'next', 'step' follows execution into the current method call.
  Now use 'n' to get to a function call and then use 's' to 'step' into it.
EXPLANATION




# And now you can use 's' or 'step'.
now_use_step




# If you've been following the instructions in the code,
# you will not see this, the execution will jump over it and stop at next breakpoint.
evaluate_exercise



puts
puts "*"*60
puts "Congratulations! You've completed the intro to the Ruby debug gem."
puts "*"*60
puts
