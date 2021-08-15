# Asynchronous-FIFO
An asynchronous FIFO refers to a FIFO design where data values are written to a FIFO buffer from one clock domain and the data values are read from the same FIFO buffer from another clock domain, where the two clock domains are asynchronous to each other.

Using Extra Bit technique was used for finding full and empty condition in this project.Write pointer writes data into the FIFO whenever the write clock gets rising edge and full flag not equal to 0 (FIFO not filled).
similarly read pointer reads data when read clk gets rising edge and empty=0(FIFO is not empty)

And even numbers are given as input data
The above explained points can be observed in the given simulation results
