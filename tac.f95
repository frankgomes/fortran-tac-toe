! tic tac toe
! by Frank Gomes
! AP Create task

program tictactoe
  ! 2D array for the grid
  character, dimension(3, 3) :: grid
  ! Value to hold raw, uninterpreted user input
  character (len = 2) :: input
  ! Values to hold position to mark
  integer :: x
  integer :: y
  ! Counter of how many loops there have been
  integer :: loops
  ! Array to hold move history
  integer, dimension(9, 2) :: history
  ! Initialize grid as empty spaces
  grid = reshape((/ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' /), (/ 3, 3 /))
  ! Start loop coubter at 1
  loops = 1
  ! Welcome banner
  print *,"Welcome to Tic Tac Toe!"
  ! Explain to user how to input position
  print *,"To enter your choice, enter the number of the column and the letter of the row."
  ! Loop infinitely and take a move every time
  do
    ! Print grid
    print *," 123"
    print *,'a',grid(1, 1), grid(1, 2), grid(1, 3)
    print *,'b',grid(2, 1), grid(2, 2), grid(2, 3)
    print *,'c',grid(3, 1), grid(3, 2), grid(3, 3)
    ! User's next move
    print *,"Make your move."
    ! Store input in string to interpret
    read *,input
    ! Set the x variable to the first number in the input
    read (input(1:1),'(i4)') x
    ! Choose which y coordinate to use based on the character the user input
    select case (input(2:2))
      case ('a')
        y = 1
      case ('b')
        y = 2
      case ('c')
        y = 3
      case default
        print *,"That was not a valid input. Try again."
    end select
    ! Add move to the history of moves
    
    ! Mark 'x' at the location the position input
    grid(y, x) = 'x'
    ! "AI" that chooses where to move
    
    ! Increment loop counter
    loops = loops + 1
  end do
end program tictactoe
