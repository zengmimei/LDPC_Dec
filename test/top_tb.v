`define SIMULATION

module tb;
parameter data_w=6;
parameter mtx_w=8;
parameter C=12;
parameter R=24;
parameter D=96;
reg [C*R*mtx_w-1:0] m;
reg [R*D*data_w-1:0] l;
wire [R*D-1:0] s;
reg clk, rst;
wire term;

ldpc_core #(.C(C), .R(R), .D(D), .N(6), .data_w(data_w), .mtx_w(mtx_w)) X (1'b1,clk,rst,l,m,s,term);

initial begin
	m={8'd0,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd7,8'd26,-8'd1,-8'd1,-8'd1,8'd41,-8'd1,8'd66,-8'd1,-8'd1,-8'd1,-8'd1,8'd43,8'd0,8'd0,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd49,8'd39,-8'd1,-8'd1,-8'd1,-8'd1,8'd65,8'd7,-8'd1,-8'd1,-8'd1,8'd0,8'd0,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd72,8'd70,-8'd1,-8'd1,8'd59,-8'd1,8'd94,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd0,8'd0,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd51,-8'd1,-8'd1,-8'd1,8'd43,-8'd1,8'd24,8'd83,-8'd1,-8'd1,-8'd1,8'd12,-8'd1,-8'd1,-8'd1,8'd0,8'd0,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd47,-8'd1,-8'd1,8'd2,-8'd1,-8'd1,-8'd1,8'd73,8'd11,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd0,8'd0,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd18,8'd14,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd53,8'd95,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd0,8'd0,-8'd1,-8'd1,-8'd1,-8'd1,8'd0,8'd79,-8'd1,-8'd1,-8'd1,8'd82,-8'd1,8'd40,8'd46,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd0,8'd0,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd72,8'd41,-8'd1,-8'd1,8'd84,-8'd1,-8'd1,-8'd1,8'd39,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd0,8'd0,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd25,8'd65,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd47,-8'd1,8'd61,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd0,8'd0,-8'd1,-8'd1,8'd0,-8'd1,-8'd1,-8'd1,8'd33,-8'd1,8'd81,8'd22,8'd24,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd0,8'd0,-8'd1,8'd12,-8'd1,-8'd1,-8'd1,8'd9,8'd79,8'd22,-8'd1,-8'd1,-8'd1,8'd27,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd0,8'd7,-8'd1,-8'd1,8'd83,8'd55,-8'd1,-8'd1,-8'd1,-8'd1,-8'd1,8'd73,8'd94,-8'd1};
    l={-6'd11,6'd2,6'd14,6'd28,6'd19,6'd8,6'd18,6'd18,6'd20,6'd24,6'd2,6'd1,6'd28,6'd28,6'd10,6'd20,6'd28,6'd22,6'd28,6'd19,6'd7,6'd24,-6'd5,6'd28,-6'd10,-6'd17,6'd4,6'd16,6'd28,-6'd5,6'd18,6'd2,6'd28,6'd28,6'd7,6'd18,6'd24,6'd22,6'd24,6'd16,6'd20,6'd12,6'd5,6'd11,6'd17,-6'd5,6'd4,6'd11,6'd16,6'd14,6'd15,6'd20,6'd28,6'd6,6'd6,6'd9,6'd13,-6'd6,6'd17,6'd28,6'd1,6'd18,6'd20,6'd5,6'd5,6'd6,-6'd5,6'd19,6'd28,6'd13,6'd6,6'd24,6'd1,6'd28,6'd6,6'd16,6'd17,6'd5,6'd23,6'd15,6'd9,6'd16,6'd22,6'd8,6'd20,6'd15,6'd9,6'd28,6'd21,-6'd2,6'd10,6'd10,6'd16,-6'd10,6'd12,6'd14,6'd28,6'd7,6'd0,6'd28,6'd28,6'd6,6'd25,6'd22,6'd28,6'd28,6'd27,6'd9,6'd10,6'd13,6'd10,6'd19,6'd28,-6'd1,6'd28,6'd28,6'd15,6'd13,6'd28,6'd21,6'd24,6'd28,6'd5,6'd17,6'd19,6'd14,6'd7,6'd9,-6'd9,6'd23,6'd18,6'd28,6'd11,6'd27,6'd28,6'd9,6'd8,-6'd7,6'd20,6'd25,6'd26,6'd9,6'd21,6'd19,6'd22,6'd22,6'd6,6'd28,6'd3,6'd7,6'd27,6'd11,6'd10,6'd25,-6'd3,6'd23,6'd6,6'd21,6'd8,6'd3,6'd21,6'd24,6'd4,6'd11,6'd11,6'd24,6'd14,6'd28,6'd5,6'd16,6'd28,6'd18,6'd12,6'd9,6'd22,6'd10,6'd20,6'd16,6'd13,6'd26,6'd10,6'd28,6'd22,6'd2,6'd11,6'd24,6'd14,6'd18,6'd15,6'd13,6'd14,6'd28,6'd2,-6'd5,6'd14,6'd18,6'd21,6'd27,6'd23,6'd10,6'd13,6'd19,6'd3,6'd24,6'd2,6'd24,6'd14,6'd14,6'd22,6'd0,6'd17,6'd11,6'd18,6'd10,6'd23,6'd20,6'd13,6'd9,-6'd4,6'd7,6'd15,6'd5,6'd21,6'd4,6'd12,6'd19,-6'd2,6'd16,6'd28,6'd1,6'd7,6'd8,-6'd8,6'd26,6'd28,6'd18,6'd3,6'd3,6'd23,6'd7,6'd28,6'd13,6'd13,6'd12,6'd4,6'd0,6'd22,6'd19,6'd28,6'd10,6'd28,6'd8,-6'd3,6'd10,6'd25,-6'd6,6'd28,6'd28,6'd14,6'd28,6'd12,6'd28,6'd12,6'd9,6'd6,6'd27,6'd28,6'd12,6'd28,6'd28,6'd17,6'd12,6'd4,6'd18,6'd10,6'd13,6'd2,6'd6,6'd6,6'd26,-6'd5,6'd3,6'd6,6'd28,6'd28,6'd28,6'd25,6'd13,6'd26,6'd23,6'd9,6'd18,6'd27,-6'd2,6'd28,-6'd2,6'd28,6'd17,6'd18,6'd22,6'd4,6'd5,6'd9,6'd26,6'd16,6'd3,6'd8,6'd2,6'd14,6'd11,6'd16,6'd14,6'd7,6'd11,6'd14,6'd28,6'd10,6'd15,6'd25,6'd24,6'd22,6'd13,6'd16,6'd16,6'd17,6'd15,6'd4,6'd12,6'd17,6'd22,6'd14,6'd28,6'd12,6'd28,6'd24,6'd25,6'd28,6'd19,6'd28,-6'd4,6'd21,6'd16,6'd1,6'd28,6'd20,6'd11,6'd18,6'd5,6'd26,6'd24,6'd12,6'd13,-6'd3,6'd7,6'd8,-6'd2,6'd25,6'd25,6'd27,6'd10,6'd13,6'd11,6'd28,6'd24,6'd24,6'd28,6'd28,6'd7,6'd28,6'd17,6'd11,6'd22,6'd6,6'd28,6'd0,6'd16,6'd28,6'd28,-6'd5,6'd28,6'd27,6'd21,6'd9,-6'd5,-6'd13,6'd28,6'd17,6'd25,6'd20,6'd28,6'd28,6'd21,-6'd2,6'd11,-6'd15,6'd28,6'd12,6'd8,6'd15,6'd12,6'd14,6'd11,6'd23,6'd20,6'd9,6'd10,6'd14,6'd15,6'd28,6'd22,6'd18,6'd23,6'd11,6'd9,6'd2,6'd11,6'd28,6'd28,6'd8,6'd27,6'd2,6'd22,6'd19,6'd12,6'd27,6'd28,6'd24,6'd23,6'd18,6'd7,6'd14,6'd23,6'd10,6'd17,6'd9,6'd12,6'd11,6'd24,6'd22,6'd19,6'd0,6'd7,6'd14,6'd28,6'd28,6'd20,-6'd1,6'd17,6'd28,6'd9,6'd22,6'd28,6'd12,6'd4,6'd15,6'd27,6'd21,6'd24,6'd21,6'd27,6'd25,-6'd9,6'd26,6'd10,6'd6,6'd18,6'd15,6'd13,6'd17,6'd28,6'd3,6'd21,-6'd3,6'd13,6'd11,6'd23,6'd23,6'd28,6'd9,6'd7,6'd14,6'd16,6'd8,6'd13,6'd19,6'd9,6'd27,6'd10,6'd6,6'd19,6'd5,6'd13,6'd20,6'd16,6'd18,6'd12,6'd21,6'd28,6'd28,6'd28,6'd4,6'd13,6'd21,6'd3,6'd18,6'd19,6'd20,6'd16,6'd21,6'd12,6'd20,6'd28,6'd4,6'd24,-6'd8,6'd2,6'd28,6'd11,6'd18,6'd8,6'd12,6'd28,-6'd3,6'd28,6'd5,-6'd7,6'd12,6'd20,6'd14,6'd17,6'd21,6'd19,6'd24,6'd7,6'd5,6'd3,-6'd13,6'd18,6'd27,6'd28,6'd28,6'd28,6'd13,6'd17,6'd24,6'd12,6'd20,6'd24,6'd26,6'd9,6'd26,6'd7,-6'd5,6'd18,6'd7,6'd16,6'd24,6'd25,6'd28,6'd24,6'd26,6'd17,6'd11,6'd21,6'd14,6'd17,6'd1,6'd13,6'd19,6'd28,6'd28,6'd25,6'd5,6'd28,6'd28,6'd28,6'd0,6'd23,6'd26,6'd28,6'd14,-6'd5,6'd10,6'd12,6'd15,6'd28,6'd18,6'd28,6'd6,-6'd4,6'd28,-6'd10,6'd5,-6'd2,6'd28,6'd11,6'd8,6'd4,6'd7,6'd14,-6'd9,6'd24,6'd28,6'd17,6'd25,6'd28,6'd19,6'd13,6'd28,6'd22,6'd12,6'd28,6'd21,6'd28,6'd2,6'd26,6'd27,6'd15,6'd6,6'd15,6'd16,6'd8,6'd12,6'd13,-6'd1,6'd16,6'd7,-6'd8,6'd17,6'd9,6'd20,6'd9,6'd25,-6'd3,-6'd7,6'd28,6'd5,6'd20,6'd3,6'd24,6'd28,6'd11,6'd6,6'd12,6'd28,6'd18,6'd14,6'd17,6'd27,6'd7,6'd28,6'd19,6'd17,6'd4,-6'd5,-6'd4,-6'd12,6'd28,6'd28,6'd18,6'd28,6'd10,6'd17,6'd28,6'd9,6'd8,6'd10,6'd11,-6'd1,6'd14,6'd25,6'd24,6'd8,6'd1,6'd9,6'd10,6'd28,6'd26,-6'd1,6'd28,6'd2,6'd4,6'd20,6'd8,6'd27,6'd18,6'd12,6'd0,6'd9,6'd17,6'd28,6'd7,6'd21,6'd28,6'd27,-6'd8,6'd21,6'd10,-6'd2,6'd19,6'd4,6'd28,6'd17,6'd7,6'd12,6'd1,6'd2,6'd4,6'd18,6'd18,6'd18,6'd13,-6'd4,6'd9,6'd4,6'd7,6'd16,6'd3,6'd11,6'd21,6'd28,6'd22,-6'd5,6'd13,6'd24,6'd5,6'd24,6'd27,6'd10,6'd24,6'd19,6'd4,6'd28,-6'd15,6'd13,6'd18,-6'd2,6'd28,6'd9,6'd16,6'd6,-6'd11,6'd11,6'd28,6'd19,6'd26,6'd12,6'd4,6'd15,6'd28,6'd9,6'd9,6'd4,6'd23,6'd19,6'd17,6'd28,6'd8,-6'd2,6'd18,6'd28,6'd23,6'd17,-6'd1,6'd22,-6'd10,6'd15,6'd22,6'd28,6'd17,6'd21,-6'd5,6'd8,6'd6,6'd14,6'd2,6'd28,6'd28,6'd26,6'd20,6'd28,6'd21,6'd2,6'd27,6'd16,6'd17,6'd21,6'd8,6'd9,6'd4,-6'd1,6'd23,6'd26,-6'd8,6'd1,6'd1,6'd28,6'd16,6'd13,6'd2,6'd15,6'd17,6'd6,6'd10,6'd28,6'd14,6'd17,6'd7,6'd23,6'd14,6'd19,-6'd1,-6'd5,6'd22,-6'd3,-6'd2,6'd4,6'd26,6'd28,-6'd2,6'd0,6'd17,-6'd15,6'd24,6'd3,6'd6,6'd28,6'd19,6'd22,6'd6,6'd17,6'd28,6'd10,6'd0,-6'd6,-6'd7,-6'd3,6'd19,6'd11,-6'd1,6'd27,6'd9,6'd27,6'd28,6'd19,6'd11,6'd14,-6'd2,6'd21,6'd12,6'd18,6'd22,6'd5,6'd28,6'd6,6'd13,6'd21,6'd28,6'd12,6'd13,6'd15,6'd22,6'd13,-6'd6,6'd17,6'd12,6'd4,6'd18,6'd28,6'd25,6'd23,6'd28,6'd27,6'd10,6'd12,6'd6,6'd22,6'd28,6'd28,6'd7,6'd17,-6'd2,6'd12,6'd7,6'd13,6'd6,6'd12,6'd21,6'd11,6'd12,6'd9,6'd18,6'd24,6'd24,-6'd19,6'd16,6'd24,6'd19,6'd17,6'd10,6'd18,6'd25,6'd10,6'd19,6'd6,6'd13,-6'd1,6'd7,6'd19,6'd10,6'd19,6'd3,6'd19,6'd14,6'd23,6'd4,6'd25,6'd21,6'd8,6'd23,6'd7,-6'd2,6'd21,6'd16,6'd5,6'd6,6'd11,6'd17,6'd8,6'd25,6'd13,6'd7,6'd9,6'd19,6'd20,6'd26,6'd12,-6'd2,6'd27,-6'd17,6'd12,6'd15,6'd28,6'd28,6'd22,6'd22,6'd5,6'd28,6'd2,6'd22,6'd28,6'd9,6'd2,6'd28,-6'd1,6'd21,6'd7,6'd19,6'd0,6'd23,6'd21,6'd28,6'd15,-6'd6,6'd12,6'd14,6'd20,6'd10,6'd11,6'd13,6'd0,6'd7,6'd1,6'd4,-6'd3,6'd1,6'd12,6'd15,6'd5,6'd10,6'd10,6'd2,6'd22,6'd20,6'd28,6'd7,-6'd20,6'd21,6'd9,6'd12,6'd28,6'd8,6'd28,6'd11,6'd18,6'd16,6'd13,6'd17,6'd16,6'd7,6'd20,6'd7,6'd11,6'd21,6'd5,6'd7,6'd28,6'd3,6'd28,6'd28,6'd24,6'd7,6'd19,6'd10,6'd7,6'd24,6'd22,6'd19,6'd10,6'd28,6'd28,-6'd3,6'd4,6'd25,6'd14,6'd17,6'd18,6'd0,6'd17,6'd3,6'd28,6'd10,6'd16,6'd21,6'd16,6'd11,6'd15,6'd28,6'd3,6'd26,6'd19,6'd17,6'd28,6'd12,6'd26,6'd8,-6'd1,6'd2,6'd10,6'd4,6'd10,6'd15,6'd10,-6'd1,6'd24,6'd26,6'd19,6'd19,6'd12,6'd6,6'd24,6'd24,6'd13,6'd4,6'd26,6'd14,6'd24,6'd15,6'd15,6'd27,6'd23,6'd11,6'd27,6'd7,6'd24,6'd28,6'd9,6'd14,6'd28,6'd1,6'd28,6'd4,6'd10,6'd22,-6'd2,6'd0,6'd28,6'd2,6'd21,6'd28,6'd6,6'd18,6'd6,6'd26,6'd10,6'd0,6'd3,6'd23,6'd7,6'd15,6'd16,6'd28,6'd27,6'd15,-6'd10,6'd14,6'd28,6'd6,-6'd1,6'd15,6'd15,6'd22,6'd3,-6'd3,6'd23,6'd6,6'd18,6'd14,6'd18,6'd14,6'd26,6'd18,6'd27,6'd28,6'd12,6'd0,6'd5,6'd13,6'd14,6'd11,6'd4,6'd28,6'd14,6'd28,6'd25,6'd12,6'd9,6'd27,6'd10,6'd18,6'd12,6'd9,6'd23,6'd20,6'd24,6'd26,6'd17,-6'd9,6'd22,6'd8,6'd0,6'd11,6'd18,6'd10,6'd13,6'd28,6'd18,6'd12,6'd5,6'd8,6'd18,6'd9,6'd15,6'd2,6'd10,6'd1,6'd1,6'd20,6'd11,6'd18,-6'd1,6'd28,6'd17,6'd28,6'd18,6'd28,6'd22,6'd6,6'd21,6'd16,6'd18,-6'd2,6'd8,6'd18,6'd22,6'd9,6'd21,6'd13,6'd6,6'd2,6'd0,6'd28,6'd0,6'd2,6'd14,6'd25,6'd22,6'd7,6'd6,6'd4,6'd28,6'd13,6'd0,6'd8,6'd18,6'd2,6'd11,6'd23,6'd14,6'd28,-6'd7,6'd20,6'd11,6'd9,6'd25,6'd6,6'd13,6'd24,6'd19,6'd15,6'd23,6'd27,6'd21,6'd25,6'd11,6'd20,6'd27,6'd14,6'd2,6'd12,6'd20,6'd18,6'd4,6'd28,6'd18,-6'd6,6'd20,6'd27,6'd13,6'd28,-6'd2,6'd19,6'd24,6'd22,6'd19,6'd3,6'd19,6'd14,6'd26,6'd17,6'd7,6'd10,6'd4,6'd19,6'd1,6'd14,6'd28,6'd8,6'd25,6'd18,-6'd6,6'd0,6'd26,6'd28,6'd28,6'd12,-6'd3,6'd7,6'd28,6'd23,6'd28,6'd20,6'd13,6'd23,6'd12,6'd22,6'd25,6'd26,6'd25,6'd1,6'd19,6'd0,6'd5,6'd11,6'd22,6'd13,6'd9,6'd7,6'd28,6'd14,6'd28,6'd8,6'd16,6'd11,6'd21,6'd12,6'd1,6'd20,6'd9,6'd11,6'd28,6'd17,6'd25,6'd22,6'd2,-6'd4,6'd28,6'd0,6'd23,6'd28,-6'd3,6'd16,6'd3,6'd22,6'd28,6'd2,6'd10,6'd28,6'd28,-6'd3,6'd28,-6'd6,6'd8,6'd11,6'd10,6'd4,6'd5,6'd1,6'd4,6'd6,-6'd1,6'd17,6'd10,6'd6,6'd28,6'd4,6'd28,6'd25,6'd19,6'd16,6'd20,6'd18,6'd0,6'd5,6'd28,6'd10,6'd28,6'd19,6'd16,6'd16,6'd13,6'd24,6'd9,6'd24,6'd13,6'd15,6'd18,6'd10,6'd15,6'd14,6'd6,6'd21,6'd20,6'd4,6'd17,6'd0,6'd8,6'd25,6'd18,6'd19,6'd9,6'd6,6'd8,6'd21,6'd18,6'd17,6'd7,6'd5,6'd15,6'd26,6'd20,6'd19,6'd27,6'd16,6'd16,6'd8,-6'd2,6'd5,6'd28,6'd15,6'd2,6'd15,6'd11,6'd14,6'd5,6'd2,6'd27,6'd11,6'd14,6'd27,6'd22,6'd24,6'd1,6'd7,6'd27,6'd4,6'd27,6'd19,6'd0,6'd13,6'd17,-6'd7,6'd20,6'd19,6'd12,6'd27,6'd7,6'd28,6'd12,6'd3,6'd21,6'd10,6'd13,6'd2,6'd28,6'd3,6'd5,6'd11,-6'd1,6'd24,6'd0,6'd9,-6'd1,6'd14,6'd1,6'd28,6'd13,6'd14,6'd28,6'd21,6'd17,6'd9,6'd10,6'd11,6'd26,6'd25,6'd13,6'd10,6'd22,6'd28,6'd24,6'd13,6'd15,6'd10,6'd28,6'd27,6'd18,6'd28,6'd24,6'd2,6'd1,6'd20,6'd25,6'd7,6'd17,6'd4,6'd23,6'd7,6'd17,6'd27,6'd4,6'd22,6'd24,6'd13,6'd25,6'd7,6'd3,6'd28,6'd28,6'd28,-6'd4,6'd13,6'd11,6'd23,-6'd7,6'd8,-6'd14,6'd0,6'd2,6'd4,6'd22,6'd23,6'd8,6'd8,6'd23,6'd28,6'd27,6'd15,6'd28,-6'd5,6'd12,6'd26,6'd25,6'd23,6'd13,6'd13,6'd24,6'd28,6'd13,-6'd1,6'd12,6'd13,6'd22,6'd5,6'd19,-6'd6,6'd28,6'd5,6'd26,6'd9,6'd27,6'd28,6'd25,6'd2,6'd26,6'd26,6'd27,6'd24,6'd21,6'd28,6'd16,6'd0,6'd18,6'd13,-6'd3,6'd10,6'd16,6'd18,6'd3,6'd10,6'd28,6'd18,6'd8,6'd12,6'd15,6'd26,6'd9,6'd6,6'd12,6'd14,6'd20,6'd24,-6'd1,6'd17,6'd20,-6'd10,6'd28,6'd23,6'd4,6'd28,6'd27,6'd8,-6'd4,6'd8,6'd23,6'd24,6'd26,6'd14,6'd18,6'd10,6'd28,6'd20,6'd28,6'd13,6'd14,6'd13,6'd11,6'd8,6'd10,6'd1,6'd26,6'd9,6'd19,6'd7,6'd22,6'd25,6'd26,6'd21,6'd23,6'd10,6'd28,6'd19,6'd27,6'd28,6'd28,-6'd4,6'd19,6'd25,6'd7,6'd16,6'd11,6'd5,6'd17,6'd10,-6'd2,6'd26,6'd12,6'd6,6'd18,6'd23,6'd12,6'd27,6'd24,6'd27,6'd26,6'd18,6'd11,6'd28,6'd23,6'd20,6'd8,6'd3,6'd15,6'd23,6'd28,6'd19,6'd15,6'd14,6'd3,6'd20,6'd17,-6'd4,6'd16,6'd12,-6'd4,6'd8,6'd26,6'd1,6'd15,6'd5,6'd4,6'd28,6'd28,6'd9,6'd28,6'd28,6'd28,6'd17,6'd22,6'd17,6'd12,6'd11,6'd8,6'd19,6'd9,6'd5,6'd18,6'd19,6'd11,6'd15,6'd23,6'd23,6'd14,-6'd6,6'd7,6'd11,6'd28,6'd12,6'd16,6'd2,6'd8,6'd7,6'd28,6'd0,6'd6,6'd19,6'd14,6'd10,6'd13,6'd18,6'd22,-6'd13,6'd23,6'd19,6'd27,6'd2,6'd28,6'd28,6'd26,6'd20,6'd16,6'd13,6'd28,6'd27,6'd22,6'd2,6'd17,6'd27,6'd20,6'd19,6'd1,6'd20,-6'd25,6'd25,6'd28,6'd17,6'd15,6'd17,6'd13,6'd16,6'd19,6'd28,6'd16,6'd20,6'd20,6'd21,6'd6,-6'd6,6'd17,-6'd18,6'd28,6'd0,6'd9,6'd21,6'd7,6'd17,6'd8,6'd13,-6'd9,6'd9,6'd20,6'd2,6'd22,6'd2,6'd28,6'd9,6'd28,6'd4,6'd8,-6'd2,6'd28,6'd28,6'd22,-6'd2,6'd28,6'd17,6'd28,6'd16,6'd10,-6'd6,6'd12,6'd28,6'd25,6'd22,6'd28,6'd26,6'd23,6'd5,6'd28,6'd23,6'd0,6'd28,-6'd8,6'd16,6'd17,6'd19,6'd10,6'd10,-6'd1,6'd21,6'd3,6'd28,6'd10,-6'd2,6'd9,6'd7,6'd16,6'd28,6'd15,6'd27,6'd23,6'd3,6'd25,-6'd5,6'd22,6'd17,6'd28,6'd16,6'd7,6'd9,-6'd10,6'd20,6'd25,6'd21,6'd20,6'd17,6'd16,6'd24,-6'd5,6'd18,6'd0,6'd28,6'd25,6'd1,6'd7,6'd16,6'd4,6'd19,6'd19,6'd28,6'd9,-6'd3,6'd7,6'd18,6'd18,6'd20,6'd11,6'd7,6'd28,6'd14,6'd28,6'd7,-6'd4,6'd28,6'd28,6'd26,6'd24,-6'd1,6'd15,6'd23,6'd28,6'd5,6'd13,-6'd2,6'd13,6'd9,6'd21,-6'd5,6'd1,6'd23,6'd17,6'd18,6'd1,-6'd5,6'd18,6'd16,6'd17,6'd28,6'd28,6'd18,6'd10,6'd14,6'd21,6'd17,6'd28,6'd14,6'd16,6'd7,6'd20,-6'd13,6'd20,6'd0,6'd14,6'd12,6'd20,6'd22,6'd15,6'd21,6'd23,6'd15,6'd28,6'd17,6'd10,6'd26,6'd10,6'd1,6'd16,-6'd1,6'd18,6'd17,-6'd3,6'd28,6'd16,6'd14,6'd6,6'd24,6'd19,6'd16,6'd16,6'd22,6'd28,6'd15,6'd28,6'd17,6'd17,-6'd11,6'd14,6'd20,6'd9,6'd5,6'd11,6'd28,6'd28,6'd17,6'd7,6'd3,6'd5,6'd22,6'd26,6'd3,6'd20,6'd0,6'd23,6'd28,6'd28,6'd0,6'd10,-6'd4,6'd14,6'd26,6'd9,6'd27,6'd28,6'd26,6'd20,6'd9,6'd15,6'd24,-6'd7,6'd12,6'd12,6'd26,6'd9,6'd14,6'd2,6'd20,6'd18,6'd10,6'd11,-6'd3,6'd27,6'd28,-6'd1,6'd12,6'd6,6'd22,6'd6,6'd10,6'd2,6'd21,6'd15,6'd19,6'd28,6'd6,6'd12,-6'd8,6'd20,-6'd7,-6'd2,6'd28,6'd15,6'd12,6'd15,6'd14,-6'd7,6'd28,6'd20,6'd16,6'd11,6'd24,-6'd1,6'd6,6'd17,6'd16,6'd8,-6'd2,-6'd1,6'd28,6'd23,6'd19,6'd17,6'd27,6'd28,6'd5,6'd16,6'd13,6'd23,6'd3,6'd8,6'd16,6'd26,6'd5,6'd3,6'd24,6'd18,6'd15,6'd15,6'd0,6'd9,6'd12,6'd0,-6'd5,6'd21,6'd28,6'd8,6'd2,6'd27,6'd13,6'd5,6'd11,6'd23,6'd28,6'd6,6'd8,6'd7,6'd8,6'd15,6'd10,6'd14,6'd12,6'd28,6'd24,6'd19,6'd22,6'd28,6'd6,6'd9,6'd28,6'd20,6'd12,6'd3,6'd28,6'd12,6'd27,6'd22,6'd17,6'd11,6'd14,6'd7,6'd14,6'd3,6'd13,6'd0,6'd28,6'd24,6'd28,6'd14,6'd12,6'd3,-6'd4,6'd17,6'd16,-6'd4,6'd28,-6'd6,6'd13,6'd12,6'd10,6'd8,6'd11,-6'd14,6'd7,6'd26,-6'd4,6'd2,6'd13,6'd14,6'd24,6'd10,6'd23,6'd23,6'd11,6'd28,6'd2,6'd14,6'd4,6'd28,6'd21,6'd28,6'd6,6'd6,-6'd6,6'd15,6'd25,6'd1,6'd5,6'd6,-6'd1,6'd13,6'd9,6'd13,6'd11,6'd20,6'd10,6'd22,6'd27,6'd11,6'd7,6'd11,6'd17,6'd5,6'd13,6'd2,6'd18,6'd15,6'd23,6'd10,6'd15,6'd28,-6'd2,6'd2,6'd2,6'd20,6'd16,6'd5,6'd28,6'd16,6'd28,6'd14,6'd25,6'd8,6'd17,6'd13,-6'd8,6'd28,6'd16,6'd3,6'd19,6'd28,6'd16,6'd2,6'd18,6'd16,6'd28,6'd8,6'd23,6'd20,6'd18,-6'd3,6'd28,6'd23,6'd6,6'd6,6'd12,6'd28,6'd15,6'd1,6'd28,6'd25,6'd17,6'd17,6'd2,-6'd8,-6'd5,6'd18,6'd17,6'd13,-6'd2,6'd28,6'd12,6'd25,6'd28,-6'd1,6'd20,6'd27,6'd4,6'd16,6'd24,-6'd8,-6'd1,6'd28,6'd28,6'd24,6'd11,6'd10,6'd28,6'd14,-6'd7,6'd6,6'd7,6'd4,6'd20,6'd15,-6'd9,6'd21,6'd23,6'd21,-6'd2,6'd18,6'd28,6'd10,-6'd3,6'd15,6'd21,6'd28,6'd17,6'd15,6'd5,6'd28,6'd1,6'd28,6'd23,6'd24,6'd20,6'd8,6'd22,6'd2,6'd1,6'd20,6'd26,6'd19,6'd14,6'd3,6'd24,6'd6,6'd8,6'd23,6'd20,6'd17,6'd2,6'd19,6'd28,6'd20,6'd14,6'd10,6'd14,6'd20,6'd13,6'd20,6'd13,6'd23,6'd21,6'd19,6'd6,-6'd2,6'd8,6'd28,-6'd1,6'd26,6'd28,6'd25,6'd3,6'd23,6'd3,-6'd3,6'd10,6'd5,6'd20,6'd21,6'd28,6'd11,6'd23,-6'd2,6'd19,6'd13,6'd18,6'd23,-6'd8,-6'd2,6'd28,6'd19,6'd20,6'd27,6'd19,6'd25,6'd28,6'd10,6'd7,6'd28,6'd27,6'd15,-6'd10,6'd10,6'd3,6'd19,6'd28,6'd18,6'd12,-6'd6,6'd8,6'd23,6'd0,6'd5,6'd15,6'd15,6'd23,6'd15,6'd2,6'd25,6'd15,6'd28,6'd25,6'd6,6'd16,6'd21,6'd19,6'd25,6'd19,6'd28,6'd4,6'd18,6'd20,6'd5,6'd3};
//    l={-5'd7,5'd4,5'd5,-5'd8,5'd3,5'd5,5'd1,-5'd8,-5'd10,5'd3,-5'd5,-5'd10,5'd7,5'd9,-5'd1,5'd5,-5'd4,-5'd7,5'd5,5'd5,5'd9,5'd9,5'd6,5'd1,-5'd1,-5'd3,-5'd3,-5'd6,5'd6,5'd5,5'd3,5'd5,5'd3,-5'd0,-5'd6,-5'd6,5'd6,5'd7,-5'd4,5'd6,-5'd4,-5'd3,5'd8,-5'd5,-5'd7,-5'd3,-5'd3,5'd4,-5'd7,-5'd5,-5'd3,5'd7,-5'd2,-5'd7,-5'd1,5'd12,-5'd3,5'd8,-5'd7,5'd2,5'd4,5'd8,5'd5,5'd8,-5'd4,-5'd3,-5'd6,-5'd6,5'd2,-5'd8,5'd7,-5'd3,5'd5,5'd2,-5'd5,-5'd0,5'd3,-5'd3,5'd6,5'd1,-5'd5,5'd3,-5'd2,5'd2,5'd0,5'd1,5'd0,-5'd5,-5'd3,-5'd14,-5'd3,-5'd9,5'd0,-5'd1,-5'd5,5'd10,5'd4,5'd4,-5'd6,5'd6,-5'd4,5'd1,-5'd8,-5'd1,5'd3,5'd1,-5'd1,-5'd2,-5'd1,5'd6,-5'd4,-5'd6,5'd4,5'd2,-5'd6,5'd8,5'd6,-5'd9,5'd1,-5'd8,-5'd5,5'd1,-5'd5,-5'd1,-5'd10,-5'd4,-5'd8,5'd3,5'd9,5'd10,5'd5,5'd6,-5'd5,5'd8,5'd1,5'd1,-5'd7,5'd3,5'd1,-5'd11,-5'd7,-5'd2,5'd7,5'd3,5'd3,-5'd4,-5'd6,-5'd5,5'd1,-5'd10,5'd2,5'd5,5'd0,-5'd7,-5'd5,-5'd6,5'd0,-5'd8,-5'd6,5'd12,-5'd8,-5'd12,-5'd5,5'd6,5'd9,-5'd8,5'd1,5'd4,5'd5,5'd0,5'd1,-5'd1,-5'd9,5'd6,5'd4,5'd6,5'd3,5'd8,-5'd6,-5'd1,-5'd2,-5'd1,5'd1,5'd2,-5'd14,-5'd8,-5'd7,5'd7,-5'd7,-5'd5,5'd8,5'd5,-5'd8,5'd7,5'd9,-5'd2,5'd5,5'd3,5'd7,5'd5,5'd8,5'd7,-5'd6,-5'd4,-5'd4,5'd4,-5'd2,-5'd10,-5'd9,-5'd8,-5'd5,5'd10,-5'd4,-5'd7,-5'd9,-5'd4,5'd5,5'd7,5'd5,5'd9,5'd3,5'd2,-5'd3,-5'd6,-5'd7,5'd9,-5'd6,-5'd8,-5'd8,5'd4,-5'd4,5'd6,-5'd7,5'd9,5'd5,-5'd6,-5'd6,-5'd1,-5'd8,-5'd0,-5'd1,-5'd4,5'd10,5'd1,5'd4,-5'd5,5'd8,5'd9,-5'd7,-5'd5,5'd3,-5'd8,-5'd6,5'd7,-5'd10,5'd9,-5'd6,5'd8,5'd3,5'd2,5'd5,-5'd6,-5'd4,5'd10,-5'd8,5'd11,5'd5,5'd6,5'd6,-5'd9,-5'd3,5'd10,-5'd3,-5'd5,5'd6,-5'd8,5'd6,5'd6,-5'd5,-5'd7,5'd2,-5'd5,-5'd3,-5'd6,-5'd1,5'd3,5'd2,-5'd9,5'd4,5'd0,-5'd2,-5'd3,-5'd7,-5'd8,-5'd7,-5'd8,5'd1,5'd4,5'd5,-5'd0,5'd5,-5'd1,-5'd0,5'd3,-5'd3,5'd2,-5'd9,-5'd2,-5'd5,-5'd7,-5'd12,5'd3,-5'd7,-5'd9,-5'd5,5'd4,-5'd3,5'd4,-5'd3,5'd2,-5'd1,-5'd3,5'd4,-5'd6,5'd4,5'd9,5'd2,5'd7,5'd5,5'd2,-5'd5,5'd4,5'd5,5'd0,-5'd6,5'd5,5'd2,5'd0,5'd10,5'd4,-5'd1,5'd4,-5'd0,5'd11,5'd9,-5'd1,5'd3,-5'd4,5'd8,5'd0,5'd2,5'd2,5'd3,-5'd7,-5'd9,5'd4,5'd10,5'd2,-5'd5,5'd4,5'd1,5'd1,5'd10,5'd7,-5'd7,-5'd4,5'd2,-5'd0,-5'd4,5'd5,-5'd6,-5'd3,-5'd0,5'd4,-5'd5,5'd7,5'd3,-5'd5,-5'd1,5'd4,-5'd5,5'd2,5'd7,5'd5,-5'd5,5'd8,5'd4,-5'd5,5'd1,-5'd3,5'd3,-5'd8,5'd3,5'd7,-5'd8,-5'd6,-5'd6,-5'd6,-5'd8,5'd7,5'd8,-5'd1,-5'd7,-5'd10,-5'd4,-5'd10,5'd1,5'd1,-5'd5,-5'd5,-5'd1,5'd8,5'd0,-5'd5,-5'd4,-5'd2,5'd7,5'd6,5'd3,-5'd11,-5'd3,-5'd8,5'd9,5'd1,5'd2,-5'd1,-5'd2,-5'd8,-5'd5,5'd4,-5'd5,5'd2,-5'd8,-5'd6,5'd2,-5'd0,-5'd3,5'd3,-5'd1,5'd1,5'd12,-5'd7,-5'd1,-5'd8,-5'd6,-5'd8,-5'd10,-5'd7,5'd2,-5'd5,-5'd9,-5'd7,-5'd3,5'd8,5'd5,-5'd1,5'd3,5'd6,5'd2,5'd9,-5'd11,5'd8,5'd4,-5'd5,5'd6,5'd4,-5'd4,5'd2,5'd4,5'd9,-5'd4,5'd1,-5'd8,5'd2,-5'd8,5'd8,5'd4,-5'd7,5'd2,-5'd4,5'd5,-5'd7,5'd7,-5'd10,5'd3,-5'd6,-5'd2,5'd0,5'd3,5'd6,-5'd11,-5'd9,5'd8,5'd1,-5'd6,-5'd3,-5'd7,5'd2,5'd3,-5'd3,5'd4,5'd6,-5'd8,-5'd4,5'd6,5'd1,5'd3,-5'd7,5'd4,5'd1,5'd7,5'd7,-5'd4,-5'd11,5'd3,5'd9,5'd7,-5'd5,5'd3,5'd6,-5'd3,-5'd8,-5'd6,-5'd6,-5'd5,-5'd0,5'd5,-5'd8,-5'd1,-5'd3,5'd2,5'd12,5'd9,-5'd5,5'd4,-5'd7,5'd11,-5'd5,5'd3,-5'd4,5'd3,-5'd5,-5'd7,-5'd4,5'd4,5'd1,-5'd9,5'd3,-5'd3,-5'd3,-5'd13,5'd7,5'd2,-5'd11,-5'd4,5'd4,5'd7,5'd5,5'd4,5'd2,5'd2,-5'd1,5'd3,5'd8,-5'd3,5'd6,5'd2,-5'd0,-5'd8,-5'd8,-5'd8,-5'd7,-5'd5,5'd8,-5'd1,-5'd7,-5'd11,5'd7,5'd3,-5'd4,-5'd7,-5'd2,5'd7,5'd3,-5'd8,-5'd5,5'd6,5'd0,5'd4,-5'd9,5'd3,5'd11,5'd10,-5'd11,-5'd7,5'd3,5'd7,5'd6,5'd6,-5'd4,5'd1,5'd7,-5'd1,-5'd7,5'd1,-5'd1,5'd10,5'd4,-5'd5,5'd1,-5'd11,5'd6,5'd4,-5'd4,-5'd4,5'd6,5'd4,-5'd2,5'd4,5'd5,5'd8,-5'd2,5'd0,-5'd10,-5'd5,5'd7,5'd11,-5'd3,-5'd3,-5'd9,5'd7,-5'd4,5'd7,-5'd6,5'd7,5'd7,5'd5,-5'd2,-5'd9,5'd4,-5'd8,-5'd5,5'd9,-5'd6,-5'd4,5'd3,5'd0,5'd8,5'd2,-5'd1,-5'd8,-5'd3,-5'd2,-5'd3,5'd10,-5'd10,5'd2,-5'd6,-5'd4,-5'd1,5'd6,-5'd7,-5'd10,5'd4,5'd1,5'd3,5'd2,5'd5,-5'd9,-5'd2,5'd4,5'd0,5'd11,-5'd9,5'd1,-5'd8,5'd2,5'd3,-5'd11,5'd8,5'd3,5'd5,5'd4,5'd5,5'd7,5'd3,5'd3,5'd4,5'd6,-5'd7,-5'd9,5'd4,-5'd7,-5'd5,-5'd10,-5'd6,5'd2,-5'd3,-5'd7,-5'd3,-5'd5,-5'd7,-5'd6,5'd3,-5'd6,5'd6,-5'd3,-5'd4,5'd4,5'd8,5'd6,-5'd5,-5'd0,5'd1,5'd4,-5'd7,5'd5,-5'd8,-5'd2,-5'd6,5'd8,-5'd4,5'd1,-5'd4,5'd9,5'd0,-5'd5,-5'd8,5'd2,5'd5,5'd6,5'd2,-5'd0,5'd5,5'd7,-5'd3,-5'd8,5'd1,5'd8,-5'd3,-5'd5,5'd7,-5'd4,-5'd5,5'd4,5'd7,5'd6,-5'd4,-5'd9,5'd7,-5'd6,-5'd4,-5'd6,-5'd9,5'd5,5'd7,5'd3,5'd4,-5'd2,5'd10,5'd10,5'd4,-5'd0,-5'd6,-5'd4,-5'd7,5'd5,5'd3,-5'd11,5'd4,-5'd9,5'd9,5'd1,5'd0,-5'd5,5'd4,5'd9,5'd6,5'd10,-5'd7,-5'd6,5'd1,5'd7,5'd1,-5'd2,-5'd5,5'd4,-5'd6,5'd6,-5'd6,5'd6,-5'd6,-5'd1,5'd5,5'd6,-5'd9,-5'd9,5'd4,-5'd0,5'd7,-5'd0,5'd3,-5'd1,-5'd5,5'd7,5'd6,5'd5,-5'd8,-5'd9,-5'd8,5'd10,5'd11,-5'd4,-5'd5,-5'd7,5'd9,5'd5,5'd0,-5'd3,5'd8,-5'd5,-5'd6,5'd3,5'd10,-5'd4,-5'd2,-5'd1,-5'd6,5'd6,-5'd8,5'd1,-5'd3,5'd4,-5'd2,5'd12,5'd7,-5'd4,-5'd0,-5'd13,5'd0,5'd8,-5'd3,-5'd1,-5'd1,5'd5,-5'd1,5'd0,5'd3,-5'd8,-5'd4,5'd3,5'd7,-5'd6,-5'd6,-5'd4,-5'd9,5'd10,5'd12,-5'd5,5'd2,5'd2,5'd6,-5'd6,-5'd7,-5'd6,-5'd1,-5'd7,5'd9,5'd4,-5'd8,-5'd2,-5'd0,-5'd10,-5'd5,5'd7,5'd4,5'd2,5'd10,-5'd7,5'd8,5'd8,5'd6,-5'd0,-5'd7,5'd9,5'd3,5'd4,5'd5,5'd1,-5'd8,5'd2,-5'd8,5'd2,-5'd5,-5'd4,-5'd5,5'd4,-5'd5,-5'd0,-5'd10,-5'd7,5'd2,-5'd11,5'd7,5'd6,5'd7,5'd9,5'd5,-5'd4,-5'd3,5'd4,-5'd5,5'd3,5'd5,-5'd7,5'd13,5'd8,5'd11,-5'd9,-5'd7,5'd5,-5'd9,5'd6,5'd5,5'd1,5'd9,-5'd3,5'd3,-5'd6,-5'd3,5'd2,-5'd4,5'd9,5'd1,5'd5,-5'd9,-5'd4,5'd8,-5'd4,-5'd4,5'd4,5'd4,5'd7,5'd4,5'd4,5'd1,-5'd13,-5'd4,-5'd1,-5'd1,5'd4,5'd4,-5'd6,-5'd0,5'd4,5'd7,5'd4,-5'd2,5'd1,-5'd6,5'd2,5'd8,5'd2,-5'd7,5'd3,-5'd9,5'd6,-5'd6,-5'd0,5'd7,-5'd4,-5'd8,5'd3,5'd4,-5'd6,5'd3,-5'd2,-5'd6,-5'd3,5'd4,5'd1,5'd2,5'd9,5'd1,-5'd5,5'd4,5'd5,-5'd7,5'd7,-5'd6,5'd6,-5'd9,-5'd6,-5'd10,-5'd4,5'd3,5'd5,-5'd10,-5'd2,5'd6,5'd6,5'd3,5'd5,5'd1,-5'd3,5'd3,-5'd0,-5'd3,5'd6,5'd3,5'd4,5'd9,5'd0,-5'd1,-5'd5,5'd7,-5'd3,5'd6,5'd3,5'd7,5'd7,5'd6,5'd7,5'd7,-5'd8,5'd6,5'd2,5'd6,-5'd5,-5'd0,5'd1,-5'd9,-5'd4,5'd2,-5'd3,5'd7,-5'd12,-5'd4,-5'd3,-5'd2,-5'd2,5'd8,-5'd7,5'd7,-5'd4,-5'd8,-5'd0,5'd4,5'd6,-5'd3,5'd5,5'd8,-5'd12,-5'd6,5'd0,5'd1,-5'd7,5'd2,5'd12,-5'd8,-5'd11,-5'd4,-5'd8,-5'd7,-5'd5,5'd2,-5'd9,5'd2,-5'd6,-5'd5,5'd7,-5'd1,5'd12,5'd2,5'd7,5'd5,5'd5,5'd4,-5'd12,-5'd4,5'd9,5'd4,-5'd5,5'd8,5'd6,5'd13,5'd9,-5'd7,-5'd0,-5'd5,5'd8,5'd11,-5'd10,5'd6,-5'd9,5'd8,-5'd7,5'd4,-5'd5,5'd1,-5'd3,-5'd8,-5'd7,5'd3,-5'd6,5'd3,-5'd5,5'd2,5'd3,-5'd3,5'd7,5'd12,5'd0,5'd0,-5'd7,-5'd10,5'd3,5'd8,5'd0,5'd5,5'd10,5'd4,-5'd5,5'd3,5'd7,5'd8,-5'd2,-5'd11,5'd2,5'd10,-5'd1,5'd7,5'd4,5'd6,5'd8,5'd4,5'd7,-5'd4,5'd9,5'd1,5'd11,5'd5,-5'd7,-5'd5,5'd10,-5'd1,-5'd9,5'd6,5'd3,-5'd2,-5'd5,5'd9,5'd6,-5'd1,5'd9,-5'd3,-5'd1,-5'd6,-5'd10,5'd6,5'd6,-5'd7,5'd0,5'd1,5'd3,-5'd8,5'd6,5'd3,-5'd5,-5'd0,5'd7,5'd3,-5'd11,5'd5,-5'd7,-5'd3,5'd0,5'd8,5'd7,5'd6,5'd5,-5'd0,-5'd7,-5'd1,-5'd11,-5'd4,5'd6,5'd10,-5'd12,-5'd7,-5'd3,5'd3,-5'd7,5'd0,-5'd4,5'd1,-5'd7,5'd3,5'd6,-5'd6,-5'd9,-5'd5,-5'd8,5'd8,-5'd3,5'd5,-5'd5,5'd3,-5'd4,-5'd5,5'd5,5'd9,5'd9,5'd7,-5'd2,-5'd10,5'd9,-5'd7,5'd2,5'd5,-5'd11,-5'd4,-5'd8,-5'd11,-5'd9,5'd5,5'd2,5'd2,5'd2,-5'd3,5'd7,5'd12,-5'd1,5'd4,-5'd9,5'd4,-5'd8,5'd7,-5'd7,-5'd2,-5'd12,-5'd4,-5'd6,-5'd6,5'd7,5'd7,5'd5,5'd4,-5'd5,5'd8,5'd2,-5'd3,-5'd10,-5'd2,-5'd2,5'd9,5'd6,5'd9,-5'd8,5'd2,-5'd6,-5'd6,5'd6,5'd4,-5'd4,5'd11,-5'd5,5'd7,5'd7,-5'd5,-5'd12,-5'd8,-5'd4,-5'd1,-5'd5,-5'd4,-5'd8,-5'd5,5'd2,5'd6,5'd0,-5'd2,-5'd3,-5'd8,5'd8,-5'd3,-5'd7,-5'd8,5'd6,5'd5,-5'd8,-5'd3,5'd5,5'd7,5'd5,-5'd11,-5'd1,5'd3,5'd2,-5'd9,-5'd1,5'd3,5'd4,5'd5,-5'd5,5'd2,5'd5,5'd1,-5'd9,-5'd6,-5'd10,5'd4,-5'd5,5'd2,-5'd6,5'd13,5'd4,-5'd5,-5'd6,5'd4,-5'd3,-5'd3,-5'd4,-5'd4,-5'd7,-5'd5,-5'd3,5'd3,5'd1,-5'd3,5'd2,5'd7,-5'd6,5'd9,5'd8,5'd0,5'd12,-5'd4,-5'd4,5'd10,-5'd7,-5'd7,-5'd5,-5'd12,5'd7,5'd7,-5'd5,5'd6,5'd10,-5'd1,5'd2,5'd6,5'd5,5'd4,-5'd6,-5'd3,5'd11,-5'd1,5'd0,-5'd6,5'd5,5'd9,5'd3,-5'd6,5'd3,-5'd12,-5'd2,5'd2,-5'd7,5'd6,5'd4,-5'd9,5'd4,-5'd5,-5'd3,5'd5,-5'd3,-5'd7,5'd0,5'd5,-5'd2,5'd6,-5'd2,5'd6,5'd0,5'd0,5'd5,-5'd10,5'd15,-5'd0,5'd1,-5'd5,5'd10,-5'd4,5'd8,5'd2,-5'd5,-5'd2,-5'd0,-5'd1,-5'd3,-5'd3,5'd5,-5'd2,5'd8,-5'd5,5'd2,-5'd6,-5'd5,5'd7,-5'd9,5'd7,5'd8,5'd6,-5'd7,-5'd3,5'd4,-5'd7,-5'd0,5'd4,5'd5,5'd11,-5'd5,5'd4,5'd3,5'd3,5'd2,-5'd2,-5'd7,5'd5,-5'd1,5'd5,-5'd5,5'd4,-5'd7,5'd5,5'd1,5'd2,5'd3,5'd0,5'd1,5'd8,-5'd5,5'd5,5'd1,-5'd10,-5'd5,-5'd3,-5'd6,-5'd6,5'd5,5'd5,5'd2,5'd4,5'd11,5'd10,-5'd9,5'd11,-5'd4,5'd2,5'd5,-5'd12,5'd4,5'd6,5'd2,5'd8,5'd8,-5'd6,5'd8,-5'd9,-5'd3,-5'd6,-5'd5,-5'd3,5'd3,5'd6,5'd4,-5'd6,-5'd6,-5'd1,5'd0,-5'd5,5'd14,-5'd3,-5'd3,-5'd1,-5'd4,-5'd7,5'd2,5'd1,-5'd3,-5'd8,5'd5,5'd5,-5'd4,-5'd11,5'd6,-5'd8,-5'd7,5'd6,5'd4,-5'd0,5'd4,-5'd8,-5'd4,-5'd6,-5'd5,5'd1,5'd4,5'd2,5'd1,-5'd1,5'd7,-5'd6,-5'd2,5'd1,-5'd4,-5'd6,5'd6,-5'd7,5'd7,5'd7,-5'd7,5'd7,-5'd7,-5'd10,-5'd4,-5'd6,-5'd9,-5'd6,-5'd1,-5'd6,5'd5,5'd9,-5'd6,5'd6,5'd5,5'd7,-5'd10,-5'd2,5'd3,5'd7,-5'd6,5'd8,5'd9,5'd0,-5'd4,-5'd5,5'd7,5'd2,5'd8,-5'd4,5'd3,5'd8,5'd3,-5'd8,5'd1,5'd4,5'd5,-5'd4,5'd9,5'd7,-5'd5,5'd9,-5'd6,5'd3,-5'd6,5'd2,5'd7,5'd8,5'd6,-5'd9,-5'd5,-5'd7,5'd4,-5'd3,-5'd8,-5'd4,5'd5,-5'd9,-5'd5,5'd7,5'd7,5'd5,-5'd5,-5'd6,-5'd7,-5'd6,-5'd2,-5'd9,-5'd5,5'd2,5'd6,5'd7,5'd9,5'd6,5'd4,5'd10,-5'd2,-5'd0,-5'd4,-5'd10,5'd5,5'd1,-5'd12,5'd6,-5'd0,5'd1,-5'd2,-5'd4,-5'd6,-5'd5,-5'd11,-5'd4,-5'd4,5'd5,5'd6,-5'd3,-5'd3,5'd12,-5'd7,-5'd7,-5'd2,5'd3,5'd6,5'd7,-5'd7,5'd9,5'd4,5'd3,-5'd5,5'd6,-5'd3,-5'd10,5'd5,-5'd5,-5'd5,-5'd5,-5'd1,-5'd3,-5'd4,5'd9,5'd6,5'd9,-5'd0,-5'd2,-5'd6,5'd3,-5'd1,-5'd3,-5'd2,5'd1,-5'd10,5'd5,5'd4,-5'd6,5'd3,-5'd5,-5'd5,-5'd8,-5'd6,5'd4,-5'd6,-5'd8,-5'd7,5'd1,-5'd8,-5'd5,-5'd7,-5'd0,-5'd4,-5'd6,5'd6,5'd7,5'd4,-5'd2,5'd10,-5'd6,5'd1,5'd9,5'd6,-5'd1,5'd7,-5'd8,-5'd6,5'd4,5'd1,-5'd6,-5'd9,-5'd5,5'd4,5'd1,-5'd9,-5'd5,-5'd3,5'd9,5'd3,-5'd4,5'd5,5'd6,-5'd7,-5'd2,-5'd4,-5'd2,-5'd4,5'd6,5'd2,5'd11,-5'd11,-5'd5,-5'd5,5'd1,5'd3,5'd11,-5'd6,-5'd2,-5'd5,5'd5,-5'd5,-5'd1,-5'd6,5'd4,5'd12,-5'd9,5'd8,-5'd9,-5'd3,-5'd8,-5'd9,5'd3,5'd1,-5'd3,-5'd7,5'd5,-5'd6,-5'd6,-5'd3,-5'd6,5'd5,5'd7,-5'd9,5'd9,-5'd0,-5'd0,5'd9,-5'd0,5'd6,5'd4,-5'd8,-5'd2,5'd10,-5'd8,-5'd4,-5'd8,5'd13,-5'd4,5'd3,5'd2,-5'd2,-5'd2,5'd1,-5'd12,5'd4,-5'd3,5'd13,-5'd7,5'd3,-5'd2,5'd8,5'd14,5'd2,5'd8,5'd9,-5'd6,-5'd5,5'd9,-5'd2,5'd5,-5'd8,5'd5,-5'd5,5'd2,5'd3,5'd3,-5'd4,-5'd5,-5'd11,-5'd5,-5'd0,5'd12,-5'd7,5'd6,5'd6,5'd5,5'd4,-5'd7,-5'd3,5'd7,5'd13,-5'd4,-5'd7,5'd9,-5'd9,-5'd7,-5'd5,-5'd6,-5'd1,-5'd6,-5'd3,-5'd6,5'd2,-5'd1,-5'd7,5'd10,-5'd3,-5'd9,-5'd5,-5'd8,-5'd3,5'd4,5'd10,5'd4,5'd5,5'd5,-5'd8,-5'd5,5'd5,5'd7,5'd9,-5'd6,-5'd1,-5'd9,-5'd5,5'd6,-5'd8,5'd8,5'd2,-5'd9,5'd1,5'd5,-5'd3,5'd2,-5'd4,-5'd2,5'd5,5'd3,-5'd8,-5'd3,5'd3,5'd6,5'd4,5'd3,5'd3,5'd8,5'd6,-5'd2,5'd2,5'd7,5'd0,-5'd1,5'd6,5'd9,-5'd2,5'd7,-5'd5,5'd8,-5'd4,5'd1,-5'd2,5'd3,5'd3,-5'd8,-5'd5,5'd4,5'd1,-5'd3,5'd7,-5'd6,5'd6,5'd2,-5'd3,5'd0,5'd5,5'd4,5'd6,5'd8,5'd9,5'd8,-5'd6,5'd6,5'd3,-5'd11,-5'd4,-5'd10,5'd4,-5'd7,-5'd0,5'd2,-5'd6,-5'd5,-5'd0,5'd3,-5'd4,-5'd0,-5'd5,-5'd1,-5'd5,-5'd4,-5'd3,5'd5,5'd6,5'd4,5'd7,5'd7,-5'd8,5'd1,-5'd9,-5'd2,-5'd5,5'd7,5'd7,-5'd3,5'd7,5'd5,5'd2,-5'd4,-5'd4,5'd6,5'd6,-5'd2,-5'd7,-5'd5,5'd2,-5'd4,5'd5,5'd11,5'd2,-5'd2,-5'd4,5'd8,5'd7,5'd3,-5'd1,-5'd5,5'd5,5'd2,-5'd4,-5'd4,5'd5,-5'd6,5'd5,5'd5,5'd9,5'd1,-5'd6,-5'd4,5'd8,-5'd1,5'd10,5'd5,-5'd7,-5'd4,-5'd3,-5'd3,-5'd6,-5'd10,5'd7,-5'd4,5'd11,5'd7,5'd5,-5'd3,-5'd7,-5'd3,5'd6,-5'd4,5'd5,5'd5,-5'd4,-5'd7,-5'd7,5'd3,-5'd0,5'd4,-5'd6,5'd2,5'd2,5'd2,5'd3,-5'd8,-5'd3,5'd5,5'd4,5'd2,5'd4,-5'd12,-5'd1,-5'd2,-5'd4,-5'd2,-5'd4,-5'd6,-5'd6,-5'd3,-5'd6,5'd8,5'd4,-5'd10,-5'd3,-5'd3,5'd5,5'd2,-5'd6,5'd3,5'd9,5'd3,5'd7,-5'd6,5'd0,5'd5,-5'd4,-5'd8,5'd7,-5'd4,-5'd3,-5'd6,-5'd5,-5'd6,5'd3,-5'd8,5'd7,-5'd8,-5'd2,-5'd0,-5'd11,-5'd8,-5'd2,-5'd6,-5'd2,5'd9,5'd6,-5'd0,5'd3,5'd5,-5'd8,5'd3,5'd3,5'd7,5'd6,5'd9,-5'd2,5'd1,5'd1,5'd5,-5'd12,5'd7,5'd6,-5'd6,-5'd2,-5'd8,5'd11,-5'd6,-5'd12,5'd3,-5'd7,-5'd2,-5'd5,-5'd1,5'd10,-5'd6,5'd4,5'd11,-5'd13,-5'd4,5'd10,5'd9,-5'd11,5'd3,-5'd8,-5'd1,5'd7,-5'd6,-5'd3,-5'd6,5'd5,5'd3,5'd9,5'd11,-5'd3,5'd2,5'd4,-5'd6,5'd3,5'd6,-5'd10,5'd4,-5'd3,-5'd5,-5'd6,-5'd7,5'd7,5'd4,-5'd8,-5'd1,5'd7,-5'd5,5'd1,5'd3,5'd5,-5'd4,-5'd2,-5'd4,5'd6,5'd12,-5'd7,5'd6,-5'd2,5'd3,5'd7,5'd6,5'd8,-5'd4,-5'd9,5'd6,-5'd4,-5'd4,-5'd8,-5'd5,5'd2,-5'd5,-5'd7,5'd4,-5'd3,-5'd4,-5'd5,-5'd4,-5'd7,5'd8,5'd5,-5'd6,5'd3,5'd4,-5'd1,-5'd4,5'd10,-5'd4,5'd4,5'd0,-5'd5,-5'd4,5'd8,5'd5,5'd5,5'd0,5'd0,-5'd9,-5'd0,-5'd5,5'd10,5'd0,5'd5,-5'd4,5'd6,-5'd2,-5'd3,5'd2,5'd6,5'd6,-5'd4,5'd7,-5'd5,-5'd5,5'd7,-5'd1,5'd4,5'd2,-5'd8,-5'd4,-5'd7,5'd8,5'd9,5'd7,-5'd5,-5'd9,-5'd5,5'd6,5'd2,5'd10,5'd4,5'd5,5'd2,-5'd2,-5'd4,5'd9,-5'd7,5'd3,5'd2,-5'd4,-5'd5,-5'd6,5'd2,-5'd3,5'd2,5'd7,5'd7,-5'd5,-5'd8,-5'd8,5'd5,-5'd2,-5'd9,-5'd3,-5'd9,-5'd11,5'd2,5'd5,5'd9,-5'd6,5'd9,-5'd7,5'd11,5'd5,-5'd9,-5'd9,-5'd7,-5'd8,-5'd1,-5'd9,5'd8,-5'd2,5'd6,5'd10,5'd6,5'd1,-5'd4,5'd5,5'd7,-5'd3,5'd1,5'd1,5'd3,5'd3,5'd5,5'd5,-5'd12,5'd10,5'd7,5'd3,5'd9,-5'd1,-5'd9,-5'd4,-5'd3,-5'd5,5'd3,-5'd1,5'd8,5'd3,5'd6,5'd5,5'd9,5'd2,-5'd4,5'd2,5'd11,5'd3,5'd1,-5'd7,-5'd2,-5'd4,5'd7,5'd7,5'd3,-5'd6,5'd2,-5'd1,5'd9,5'd3,5'd6,5'd4,-5'd4,5'd3,5'd2,-5'd3,5'd7,-5'd8,5'd3,-5'd7,5'd7,-5'd8,5'd9,5'd0,5'd3,5'd10,-5'd3,-5'd3,-5'd3,5'd0,5'd5,-5'd5,-5'd3,5'd7,-5'd3,5'd4};

	clk = 0;
    forever #5 clk = ~clk;
end

initial begin
	rst = 1;
	#10 rst = 0;
	$monitor("%b",s);
end

always @(posedge term)
    #5 $finish;

endmodule

