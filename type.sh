#!/bin/bash

echo  "module test;  

    // 1. Declare testbench variables  
    reg a;  
    reg b;  
    reg cin;  
    wire s;  
    wire cout;  
    integer i;  

        // 2. Instantiate the design and connect to testbench variables  
    fulladder  fa0 ( .a (a),  
               .b (b),  
               .cin (cin),
    	   .cout(cout),
               .sum (s));  

      // 3. Provide stimulus to test the design  
    initial begin  
    	a <= 0;  
    	b <= 0;  
    	\$monitor ("0x%0h 0x%0h 0x%0h 0x%0h 0x%0h", a, b,cin, cout, s);  

            // Use a for loop to apply random values to the input  
    	for (i = 0; i < 50; i = i+1) begin  
    		#10 a <= \$random;  
    	     	b <= \$random;
    	     	cin <=\$random;
          	end  
    end  
    endmodule" 
