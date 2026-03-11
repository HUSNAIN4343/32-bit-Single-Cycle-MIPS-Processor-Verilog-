module reg_file(
    input clk,
    input reset,
    input write_en,
    input [31:0] data_in,
    output reg [31:0] r0,
    output reg [31:0] r1,
    output reg [31:0] acc
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            r0 <= 32'b0;
            r1 <= 32'b0;
            acc <= 32'b0;
        end
        else if (write_en) begin
            acc <= data_in;  // Always write ALU result to ACC
        end
    end
endmodule

