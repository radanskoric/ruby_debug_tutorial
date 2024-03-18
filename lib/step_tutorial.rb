def now_use_step
  using_step = <<~EXPLANATION
    Well done! You've just stepped into the execution of a method.
    You can keep doing that to step into nested method calls.
    Now use next to get to a function call and use step.
  EXPLANATION
  # Now use step to step down again
  go_deeper
end


def go_deeper
  # You can go deeper, use step again
  go_even_deeper
end



def go_even_deeper
  # We can stop here. :)
  looking_at_stack_trace = <<~EXPLANATION
    You are now 3 levels deep in the call stack. But you might not remember where you are.
    You can check the current stack trace by using 'backtrace' or 'bt'.
    Do that now and then use 'next' to move on.
  EXPLANATION

  # Instructions are below.


  # Study the above stack trace for a moment to get familiar with all the information it's showing.
  navigating_the_stack = <<~EXPLANATION
    You can move up and down the stack trace at any time by using 'up' and 'down'.
    Try doing that now, use 'up' 3 times and then 'down' 3 times.
    And then use 'next' to move on.
  EXPLANATION

  moving_on = <<~EXPLANATION
    You can let the program run on until the end (or next breakpoint) with 'continue' or 'c'.
    Do that now and the program will run until the next section of the tutorial.
  EXPLANATION
end
