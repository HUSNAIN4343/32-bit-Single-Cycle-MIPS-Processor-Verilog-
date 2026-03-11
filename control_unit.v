module control_unit(
    input [5:0] opcode,
    output reg [2:0] alu_op,
    output reg reg_write
);

    always @(*) begin
        case(opcode)
            6'b000000: begin  // ADD
                alu_op = 3'b000; 
                reg_write = 1'b1;
            end
            6'b000001: begin  // SUB
                alu_op = 3'b001;
                reg_write = 1'b1;
            end
            6'b000010: begin  // AND
                alu_op = 3'b010;
                reg_write = 1'b1;
            end
            default: begin
                alu_op = 3'b000;
                reg_write = 1'b0;
            end
        endcase
    end
endmodule

