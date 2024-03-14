!> This program implements a simple coin tossing game where the user guesses the outcome of a coin toss.
!! Instructions:
!! 1. Create a simple guess the tossing game. The game should toss a coin 1 times and add the score.
!!
!! @author Shri Ganesh Jha
!!
!! @param score The current score of the player.
!! @param guess The user's guess (0 for heads, 1 for tails).
!! @param toss The outcome of the coin toss (0 for tails, 1 for heads).
!! @param heads The number of times heads appeared.
!! @param tails The number of times tails appeared.
!! @param i Loop variable.
!!
!! @return None.
!!
program tossgame
    implicit none
    integer :: score
    integer :: guess
    integer :: toss
    integer :: heads
    integer :: tails
    integer :: i
 
    heads = 0
    tails = 1
    score = 0
 
    do i = 1, 3
       print '(A)', 'Loading the Gaming' // repeat('.', i)
       call sleep(1)
       call system("clear")
    end do
    print *, "Enter 0 for heads or 1 for tails: "
    read *, guess
 
    print *, merge("You have selected heads", "You have selected tails", guess == 0)
    do i = 1, 6
       print '(A)', 'Coin is being tossed' // repeat('💨', i)
       call sleep(1)
       call system("clear")
    end do
 
    do i = 1, 1
       toss = nint(2 * rand(0))  ! Randomly generate 0 (tails) or 1 (heads)
       if (toss == guess) then
          score = score + 1
          print *, "Your guess was correct! And Your score is: ", score
 
       else
          print *, "Your guess was wrong!"
       end if
    end do
 
    print *, "Heads: ", heads
    print *, "Tails: ", tails
    print *, "Score: ", score
 
    score = 0
 
 end program tossgame
 