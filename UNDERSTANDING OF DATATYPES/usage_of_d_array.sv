`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 15:09:43
// Design Name: 
// Module Name: usage_of_d_array
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


module usage_of_d_array;
int d_array [];                                                         // Dynamic array declaration

initial begin

$display("Before Memory Allocation");
$display("\tSize of d_array = %0d",d_array.size());

d_array = new[4];                                                        // Memory allocation

$display("After Memory Allocation");
$display("\tSize of d_array = %0d",d_array.size());

d_array = {2,4,6,8};                                                     //array initialization
$display("--- d_array Values are ---");
foreach(d_array[i])  $display("\td_array[%0d] = %0d",i, d_array[i]);
$display("------------End of the array---------------------");

d_array.delete;                                                          //delete array
$display("\tSize of d_array = %0d",d_array.size());

d_array = new[4];                                                      //Memory allocation
d_array = {1, 3, 5, 7};                                                //Array initialization 
d_array = new[10](d_array);                                            //Resizing the dynamic array by retaining old values
$display("\tSize of d_array = %0d",d_array.size());
$display("--- d_array Values are ---");
foreach(d_array[i])  $display("\td_array[%0d] = %0d",i, d_array[i]);
$display("------------End of the array---------------------");

d_array = new[3];                                                      //Resizing the dynamic array by overriding
$display("\tSize of d_array = %0d",d_array.size());
$display("--- d_array Values are ---");
foreach(d_array[i])  $display("\td_array[%0d] = %0d",i, d_array[i]);
$display("------------End of the array---------------------");

end

endmodule
