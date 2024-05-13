      program main
          implicit none

          integer, dimension(5) :: array
          integer ::i
          call readData(array)
          ! Print the array values
          print *, "Array values:"
          do i = 1, 5
              print *, array(i)
          end do
          call findSmallest(array)
          call findLargest(array)
          call mode(array)
      contains
         !-----------------
          subroutine findSmallest(arr)
              implicit none
              integer :: s, smallest = 0
              integer, dimension(5) :: arr
              ! i to iterate the array
              smallest = arr(1) !set smallest to the first element of the array
              do s = 1, 5
                if(arr(s) < smallest) then
                      smallest = arr(s)
                end if
              end do
              print*, "Smallest: ", smallest
          end subroutine findSmallest
    !-----------------
          subroutine findLargest(arr)
             implicit none
             integer :: l, largest = 0
             integer, dimension(5) :: arr

        !set largest to the first element of the array
             largest = arr(1)
             do i = 1, 5
                 if(arr(i) > largest) then
                     largest = arr(i)
                 end if
             end do
        !print largest
             print*, "Largest: ", largest
          end subroutine findLargest
    !-----------------
          subroutine readData(arr)
             implicit none

             integer :: r, input
             integer, dimension(5) :: arr

        ! Initialize the array
            do r = 1, 5
                print*, "Enter an integer:"
                read*, input
                arr(r) = input
            end do
             end subroutine readData

            subroutine mode(arr)
                integer :: m, m2, counter, maxCount = 0, mod
                integer, dimension(5) :: arr

                !double do loops to calculate the mode
                do m = 1, 5
                    counter = 0
                    do m2 = 1, 5
                        if(arr(m) == arr(m2)) then
                            counter = counter + 1
                        end if
                    end do
                    if(counter > maxCount)then
                        mod = arr(m)
                        maxCount = counter
                    end if
                end do
                !print mode
                print*, "Mode is: ", mod
            end subroutine mode
      end program main







