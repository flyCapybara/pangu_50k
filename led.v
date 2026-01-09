module led (
    input wire clk,
    input wire rst_n,
    output reg [7:0] led_out
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        led_out <= 8'b00000000;
    end else begin
        led_out <= {led_out[6:0], led_out[7]};
    end
end

endmodule //led