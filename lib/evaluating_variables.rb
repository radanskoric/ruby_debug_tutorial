require "digest"

SECRET_WORD_SHA256 = "e4ba5cbd251c98e6cd1c23f126a3b81d8d8328abc95387229850952b3ef9f904".freeze

def sesame(secret_word)
  if Digest::SHA256.hexdigest(secret_word) == SECRET_WORD_SHA256
    puts "WELL DONE! You got the right answer! \n You've successfully solved the challenge! \n\n" \
      "Thank you for participating, this is it for now. \n" \
      "Type continue to let the program run to completion."
    true
  else
    puts "WRONG ANSWER! Try again."
    false
  end
end

def evaluate_exercise
  # Welcome to the other part of the tutorial!
  # The execution stopped because we added an explicit break call
  binding.break # Use next to move on.

  breaking_in_your_own_code = <<~EXPLANATION
    Using a manual binding.break is the easiest way to trigger a debugger
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
    In the current scope there is also a constant called SECRET.
    Try inspecting its value to find the secret word and then call sesame again.
  EXPLANATION
end
