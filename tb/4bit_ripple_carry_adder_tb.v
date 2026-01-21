module bit_ripple_carry_adder_tb;

reg [3:0]A, B;
reg Cin;
wire [3:0]Sum;
wire Cout;

bit_ripple_carry_adder bitRCA (.A(A),
				  .B(B),
				   .Cin(Cin),
			             .Sum(Sum),
				       .Cout(Cout)
);

initial
begin

	A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        A = 4'b0001; B = 4'b0010; Cin = 0; #10;
        A = 4'b0101; B = 4'b0011; Cin = 0; #10;
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;
        A = 4'b1010; B = 4'b0101; Cin = 1; #10;
        A = 4'b1111; B = 4'b1111; Cin = 1; #10;

$finish;
end

endmodule
