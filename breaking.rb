START_HERE = <<~EXPLANATION
  Welcome to an interactive introduction to using breakpoints with the Ruby debugger.
  It assumes basic familiarity with the debugger. If it is unfamiliar to you, please
  exit and start with the intro tutorial (check the README).

  If you are familiar, please type `next` to move on. :)
EXPLANATION





BREAKING_ON_LINE = <<~EXPLANATION
  The most basic breakpoint is a line-based breakpoint. This will tell the debugger to stop the
  execution when it reaches a specific line of code.

  Set it now by typing `break 26` and then use `continue` (or just `c`) to let the program run.
EXPLANATION



# YES, you did it! A bit ancticlimactic but what did you expect, it's just breaking on a line.
# However, it can be very handy to move fast through complex code. For example, below is some code
# that you would need to step a few times into to get to the most inner block.
# Or you can simply set a line breakpoint.
[1,2,3].each do |x|
  if x.even?
    "Set a line breakpoint for line 30 and `continue` to get to it quickly."

    NEXT = <<~EXPLANATION
      You can qualify the line with a file name. This tutorial continues in a file "lib/b2.rb".
      Set a breakpoint on line 42 of the file with `break lib/b2.rb:42` and `continue`.
    EXPLANATION
    require_relative "lib/b2.rb"
  end
end

puts
puts "*"*60
puts "Congratulations! You've completed the break points tutorial."
puts "*"*60
puts
