module test;  

// 1. Declare testbench variables  
reg clk = 0;  
reg rst = 0;  
reg up = 0;  
wire [1:0]y;  

integer i;  
  
    // 2. Instantiate the design and connect to testbench variables  
fsm fsm0 (	.clk (clk),  
           	.rst (rst),  
           	.up (up),
	   		.y(y));  
  
  // 3. Provide stimulus to test the design  
initial begin  
	rst = 1;
	clk = 0; #50 clk = 1; #50;
	rst = 0;
	\\\\$display(\\\\"[reseted]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);
	\\\\$display(\\\\"up <- 0x%0h\\\\", up);
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);	
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);
	up = 1;
	\\\\$display(\\\\"up <- 0x%0h\\\\", up);
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);	
	up = 0;
	\\\\$display(\\\\"up <- 0x%0h\\\\", up);
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);	
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);
	up = 1;
	\\\\$display(\\\\"up <- 0x%0h\\\\", up);
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);	
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);	
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);	
	up = 0;
	\\\\$display(\\\\"up <- 0x%0h\\\\", up);
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);	
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);	
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);	
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);	
	clk = 0; #50; clk = 1; #50;
	\\\\$display(\\\\"[clock]\\\\");
	\\\\$display(\\\\"y = 0x%0h\\\\", y);		
end  
endmodule  

