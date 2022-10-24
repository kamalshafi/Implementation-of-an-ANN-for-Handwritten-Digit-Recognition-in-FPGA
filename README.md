# Implementation-of-an-ANN-for-Handwritten-Digit-Recognition-in-FPGA

Implementation of an ANN for handwritten Digit Recognition in FPGA: Multiplier and Accumulator (MAC), Accumulator(ACC) design, Integrating with sigmoid IP block. Sigmoid is implemented using LUT.

## Introduction: 

Designing and implementing an artificial neural network. We took inputs as pixels and weights to compute the hidden layer. Each pixel has a value ranging from -0.5 to 0.5. It is represented by 8-bit fixed point 2’scomplementary numbers with 7 fractional bits. weight values 𝑤𝑖 are also given as 8-bit fixe point 2’s complementary numbers with 5 fractional bits. Computing the output of each hidden layer is given as y=∑ i=1 to N wi.xi+bi. To determine this output, it is divided this into 2 modules: 1.MAC module 2. Accumulator module. the MAC module take the inputs: weights and pixels data multiply them to get a 16-bit output for each multiplier and add the individual multiplier outputs to get a 20-bit final output. In Acc module, it takes four clock cycles to accumulate the 64-bit value of pixel and weight as each MAC module takes only 16bit of pixel and weights.  get output of 22bit. Now, wrapper module was designed and integrated with sigmoid block to get 8-bit output. Finally,   all the blocks were put together in a single module.

## Milestone 1: Multiplier and Accumulator (MAC) Design:

In this part of the project, Multiplier Accumulator circuit was designed which multiplies the pixel values with weights. This project requires us to take data for 64 pixels and multiply it with 64 weights of the particular node. Since designing a large multiplier is a waste of resources, so a MAC was designed  which takes data for 16 pixels and 16 weights. Running this design 4 times can cover 64 pixels and weights. I have attached a basic block diagram of the MAC design. Each pixel contains 8 bits and each weight contains 8 bits too. So 8 pixels were multiplied with 8 weights and added together.

In the first addition I have used 8, 16-bit adders. Outputs of this 16-bit adder were added with 4, 17-bit adders. Outputs were added using 2, 18-bit adders. Finally, I have added the results of 18 bit adders using a 19-bit adder and got a 20-bit output.  

I have used 4 registers in this design. 2 Input registers store the input pixels and weights. One register is used to store the multiplication output. Finally, I have designed an output register to store the outputs. 

 
## Milestone 2: Accumulator (ACC) Module Design:

Accumulator module is used to accumulate the results of MAC module. ACC will take Four clock cycles to produce 22-bit output. MAC works for 16 pixels, so we ran it 4 times and accumulated the outputs for all 64 pixels. Bias is also added with the output for o linearization. 
Enable(en) and Selection(sel)is needed for the operation of the MUX and output register. This module needs 4 clock cycle to present outputs. After 4 clock cycles en signal is 1 to present the output. In first clock cycle sel signal is 1 to add the bias. A FSM is designed to generate thr en and sel signals.

## Milestone 3: Integrating with sigmoid IP block:

IP Wrapper is designed to integrate the MAC acc module and the sigmoid function. The IP block is integrated and wrapper module is created which takes the 22-bit output of the MAC_ACC combined module and gives an output of 8-bit.
The final module has a latency period of 7 clock cycles as MAC and ACC needs time to generate output. For both MAC-ACC and MAC_ACC_Wrapper a second reset signal is generatedfor updating the control FSM.

