range <- as.integer(readline('Enter a range for guessing: '))
rand_no = sample(1:a, 1)

repeat{
  guessed_no <- as.integer(readline('Guess a number: '))
  
  if(guessed_no == rand_no)
  {
    cat('\nCongratulations!')
    break
  }
  else if(guessed_no < rand_no)
    cat('\n Too Low')
  else
    cat('\nToo High')
}