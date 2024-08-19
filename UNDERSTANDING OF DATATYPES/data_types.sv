`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2024 23:02:24
// Design Name: 
// Module Name: data_types
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module data_types;

//declaration

bit b;
byte c;
logic d;
reg [0:32]ff = 'd10;
integer iv;
integer first_num = 11;
integer a[0:2] = {'d0, 'd1, 'd2};
real pi = 3.147;
time clock = $time;
string s1 = "Hello World";
string s2 = {"Hi,"," ",s1};

initial begin
//display values
$display("Initial value of bit_datatype = %0d       ||| size of bit_datatype = %0d",b,$bits(b));
$display("Initial value of byte_datatype = %0d      ||| size of byte_datatype = %0d",c,$bits(c));
$display("Initial value of logic_datatype = %0d     ||| size of logic_datatype = %0d",d,$bits(d));
$display("The value of ff = %0d                     ||| size of reg_datatype = %0d",ff,$bits(ff));
$display("Initial value of integer_datatype = %0d   ||| size of integer_datatype = %0d",iv,$bits(iv));
$display("first_num = %0d                           ||| size of the datatype = %0d",first_num,$bits(first_num));
$display("Second number of array is  = %0d          ||| size of the datatype = %0d",a[1],$bits(a));
$display("The value of pi  = %0d                    ||| size of real_datatype = %0d",pi,$bits(pi));
$display("simulation time = %0d                     ||| size of time_datatype = %0d",clock,$bits(clock));
$display("String 1 s1 = %0s                         ||| size of string_datatype = %0d",s1,$bits(s1));
$display("String 2 s2 = %0s                         ||| size of string_datatype = %0d",s2,$bits(s2));

end
endmodule

