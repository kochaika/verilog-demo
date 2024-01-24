module fsm(input logic clk,
input logic reset,
input logic up,
output logic [1:0]y);
typedef enum logic [1:0] {S0=2'b00, S1, S2, S3} statetype;
statetype state, nextstate;
/*
always @(posedge reset)
begin
$display("1");

end
*/
always @(posedge clk)
begin
if (up)
    begin
        case (state)
        S0: nextstate = S1;
        S1: nextstate = S2;
        S2: nextstate = S3;
        S3: nextstate = S3;
        default: nextstate = S0;
        endcase
    end
else
    begin
    case (state)
        S0: nextstate = S0;
        S1: nextstate = S0;
        S2: nextstate = S1;
        S3: nextstate = S2;
        default: nextstate = S0;
        endcase
    end
if (reset) state = S0;
else state = nextstate;	
y <= state;
end


endmodule

/*
module fsm(input logic clk,
input logic reset,
input logic up,
output logic [1:0]y);
typedef enum logic [1:0] {S0=2'b00, S1, S2, S3} statetype;
statetype state, nextstate;

always_ff @(posedge clk, posedge reset)
if (reset) state <= S0;
else state <= nextstate;

always_comb
begin
if (up)
    begin
        case (state)
        S0: nextstate <= S1;
        S1: nextstate <= S2;
        S2: nextstate <= S3;
        S3: nextstate <= S3;
        default: nextstate <= S0;
        endcase
    end
else
    begin
    case (state)
        S0: nextstate <= S0;
        S1: nextstate <= S0;
        S2: nextstate <= S1;
        S3: nextstate <= S2;
        default: nextstate <= S0;
        endcase
    end
end

assign y = state;
endmodule


*/