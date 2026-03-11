module instruction_mem(
    input [31:0] pc,
    output reg [31:0] instruction
);
    (* ram_style = "block" *) reg [31:0] mem [0:255];

    integer i;

    initial begin
        for (i = 0; i < 256; i = i + 1)
            mem[i] = 32'b0;

        // Format: opcode[31:26] src1[25:21] src2[20:16] dest[15:11] unused[10:0]
        mem[0] = {6'b000000, 5'd0, 5'd1, 5'd2, 11'd0}; // ADD R0, R1 -> ACC
        mem[1] = {6'b000001, 5'd0, 5'd1, 5'd2, 11'd0}; // SUB R0, R1 -> ACC
        mem[2] = {6'b000010, 5'd0, 5'd1, 5'd2, 11'd0}; // AND R0, R1 -> ACC

        $display("Instruction Memory Initialized:");
        $display("mem[0] = %b", mem[0]);
        $display("mem[1] = %b", mem[1]);
        $display("mem[2] = %b", mem[2]);
    end

    always @(*) begin
        instruction = mem[pc[9:2]];
    end
endmodule

