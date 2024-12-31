# Incorrect Multiplication of std_logic_vector in VHDL

This repository demonstrates a common error in VHDL: attempting to directly multiply `std_logic_vector` signals using the `*` operator. This is not a supported operation in VHDL.

The `bug.vhdl` file shows the erroneous code. The `bugSolution.vhdl` file provides a corrected version using a process to perform the multiplication bit-by-bit. 

This example highlights the importance of understanding VHDL's built-in operators and the need to perform more complex arithmetic operations using functions or processes.