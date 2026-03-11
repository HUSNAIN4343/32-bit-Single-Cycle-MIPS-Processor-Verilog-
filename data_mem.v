module data_mem(
    input clk,
    input [31:0] addr,
    input [31:0] data_in,
    input write_en,
    output [31:0] data_out
);
    reg [31:0] mem [0:255];
    
    always @(posedge clk) begin
        if (write_en)
            mem[addr[7:0] >> 2] <= data_in;
    end
    
    assign data_out = mem[addr[7:0] >> 2];
endmodule

