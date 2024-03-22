require "digest"

SECRET_WORD_SHA256 = "f259d1f5729a364a5b98dae54ef3d801386622c4a1abb8048320957597272fa8".freeze

def sesame(secret_word)
  if Digest::SHA256.hexdigest(secret_word) == SECRET_WORD_SHA256
    puts "WELL DONE! You got the right answer! \n You've successfully solved the challenge! \n\n" \
      "Thank you for participating, this is it for this time. \n" \
      "Type continue to let the program run to completion."
    true
  else
    puts "WRONG ANSWER! Try again."
    false
  end
end


actual_hint = <<~HINT
  Well done!! You found the actual hint. :)
  Here it is: In the current scope there is also a constant called SECRET.
  Try inspecting its value to find the secret word and then call `sesame` again.
HINT



# You almost reached the hint, keep going. :)



def evaluate_exercise
  # Welcome to the other part of the tutorial!
  # The execution stopped because we added an explicit break call
  debugger # Use next to move on.

  breaking_in_your_own_code = <<~EXPLANATION
    Using a manual `debugger` call is the easiest way to trigger a debugger
    outside an IDE. Try using it in your own code.
    Use next to move on.
  EXPLANATION

  evaluating_variables = <<~EXPLANATION
    The debugger shell is capable of full Ruby execution. You can type
    a ruby expression and evaluate it.
    For example try typing a simple arithmetic expressions like 6*7.
    When you've had your calculator fun, type next to move on.
  EXPLANATION



  calling_functions = <<~EXPLANATION
    You can also call functions. There is a function in the current scope called
    'sesame' that takes one string parameter and checks its value:
    Call it like this: sesame("secret").
    Can you guess what the actual secret word is? Use next to go to a hint.
  EXPLANATION




  hint = <<~EXPLANATION
    Ha, the hint is not actually here! The hint is up, in the top part of the file.
    No, no, don't open it in your editor, you won't learn that way. `list` or `l`
    shows the source code around the current line and `list -` or `l -`
    successively shows previous blocks of code. Use it until you get to the hint.
  EXPLANATION
end
