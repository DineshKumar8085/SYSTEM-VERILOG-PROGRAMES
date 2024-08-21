`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2024 10:31:05
// Design Name: 
// Module Name: usage_of_astv_array
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


module usage_of_astv_array;
bit [0:7]astv_array[int];                                                                      //Declaration of associative array  
int index,temp;

initial begin

astv_array[5] = 4;                                                                              //initialization of the array
astv_array[10] = 8;
astv_array[15] = 12;
astv_array[20] = 16;
astv_array[25] = 20;

$display("-------------------displaying associative array values-------------------");
foreach (astv_array[i]) $display("array[%0d] = %0d", i, astv_array[i]);
$display("-------------------end of the array-------------------");

$display("size = %0d, Number of entries = %0d of array", astv_array.size(), astv_array.num()); //printing size and no.of.entries in the array

$display("--------------------Usage of Exist Method-----------------------------");

if(astv_array.exists(7)) $display("An element exists at index 7");                                //Usage of exist method
    else $display("An element doesn't exists at index 7");
if(astv_array.exists(10)) $display("An element exists at index 10");
    else $display("An element doesn't exist at index 10");

$display("------------------------------------------------------------------------");

$display("----------------Usage of first,last,next,prev Methods--------------------");

astv_array.first(index);
$display("The first index of the array is %0d",index);
astv_array.last(index);
$display("The last index of the array is %0d",index);
index = 5;
temp = 5;
astv_array.next(temp);
$display("The next index after %0d is %0d",index,temp);
index = 20;
temp = 20;
astv_array.prev(temp);
$display("The previous index before %0d is %0d",index,temp);

$display("------------------------------------------------------------------------");

end

endmodule
