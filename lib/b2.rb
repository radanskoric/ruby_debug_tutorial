class Foo
  def entry_point
    indirection
  end

  private

  def indirection
    bar
  end



  def bar
    # And here you are, in the method you were looking for.
    # As a reminder, you can use `bt` to see the stack that lead to this method being called.
    # Read on to learn about conditional breaking.
    conditions = <<~EXPLANATION
      All of the breaking methods also accept a condition that is evaluated to determine if
      execution should stop or not. The condition is plain ruby. Use `next` to learn how.
    EXPLANATION



    # Below code is repeatedly calling the same block with random numbers. Let's break when
    # the number is equal to 5. Type `break 27 if: num == 5` and then `continue`` to let it run.
    loop do
      num = rand 10
      puts num # Great, now `continue` to learn about catching exceptions
      break if num == 5
    end

    ExceptionBreak.new.learn
  end
end




# Great, you're in the second part of the break point tutorial.
# Next thing that is very useful in navigating complex code is breaking on a specific function.
# The tutorial continues inside a function `bar` on class `Foo`.
# Type `break Foo#bar` to break whenever that method is called and `continue`.
Foo.new.entry_point
