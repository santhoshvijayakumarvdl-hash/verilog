module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
);
    assign heater = mode & too_cold;        // Heating mode → turn on heater if too cold
    assign aircon = ~mode & too_hot;        // Cooling mode → turn on AC if too hot
    assign fan = fan_on | heater | aircon;  // Fan runs if user requests OR heater/AC is on
endmodule
