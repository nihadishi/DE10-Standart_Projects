module BCConnection (
    input [3:0] X,
    input [3:0] Y,
    input thrdimension,
    output [3:0] S,
    output cout
);
assign {cout, S[3:0]} = X + Y + thrdimension;
assign S = (S > 9) ? (S + 6) : S;
