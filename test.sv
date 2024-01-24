module test;  

// 1. Declare testbench variables  
reg clk;  
reg reset;  
reg up;  
wire [1:0]y;  

integer i;  
  
    // 2. Instantiate the design and connect to testbench variables  
fsm fsm0 (	.clk (clk),  
           	.reset (reset),  
           	.up (up),
	   		.y(y));  
  
  // 3. Provide stimulus to test the design  
initial begin  
	up = 0;
	reset = 1;
	clk = 0; #10; clk = 1; #10;
	reset = 0;
	$display("[reseted]");
	$display("y = 0x%0h", y);
	$display("up <- 0x%0h", up);
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);	
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);
	up = 1;
	$display("up <- 0x%0h", up);
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);	
	up = 0;
	$display("up <- 0x%0h", up);
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);	
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);
	up = 1;
	$display("up <- 0x%0h", up);
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);	
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);	
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);	
	up = 0;
	$display("up <- 0x%0h", up);
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);	
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);	
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);	
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);	
	clk = 0; #10; clk = 1; #10;
	$display("[clock]");
	$display("y = 0x%0h", y);		
end  
endmodule  

