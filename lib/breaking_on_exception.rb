class ExceptionBreak
  class Err < RuntimeError; end;
  def learn
    # Breaking on exceptions is a very powerful tool for debugging real world issues.
    # Quite often you'll start from a an error captured by your error tracker.
    debugger
    # Next line raises our custom exception Err inside it and we'll catch it.
    # Type `catch ExceptionBreak::Err` and then `continue` to see it get caught.
    a_broken_method

  rescue Err
    listing_breakpoints = <<~EXPLANATION
      You've now added a few breakpoints. At any point you can inspect your breakpoints
      by typing `break` without parameters. Do that now and then type `continue` to move on.
    EXPLANATION


    managing_breakpoints = <<~EXPLANATION
      You can remove a breakpoint you no longer need by typing `delete <breakpoint number>`.
      Try that now by typing `delete 0`. Type continue to finish the tutorial.
    EXPLANATION
  end

  private

  def a_broken_method
    # Prepare next steps's break so I don't have to confuse people by telling them to use next instead of continue.
    debugger do: "break 12"
    debugger do: "break 18"


    (1..6).each do |i|
      # And now the debugger stopped when the exception was raised. Notice
      # that you had to type a fully qualified name of the exception class.
      # use `continue` to move on.
      raise Err if i > 5
    end
  end
end
