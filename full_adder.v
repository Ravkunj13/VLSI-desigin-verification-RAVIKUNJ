/******************************************************************************************
 

Filename    :	   full_adder.v   

Description :      One bit Full adder Design

Author Name :      Susmita

Version     : 	   1.0
*********************************************************************************************/

module full_adder(
    input a_in,
    input b_in,
    input c_in,
    output sum_out,
    output carry_out
);

    // Step1: Write down the directions for the ports
    // Done inline with the port declaration above

    // Step2: Declare the internal wires 
    wire w1, w2, w3; 

    // Step3: Instantiate the Half-Adders using name-based port mapping
    half_adder HA1(
        .a(a_in),
        .b(b_in),
        .sum(w1),
        .carry(w2)
    );
    
    half_adder HA2(
        .a(w1),
        .b(c_in),
        .sum(sum_out),
        .carry(w3)
    );

    // Step4: Instantiate the OR gate correctly
    or or1(
        carry_out,
        w2,
        w3
    );

endmodule