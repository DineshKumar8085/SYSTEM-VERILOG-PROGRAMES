`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2024 20:27:05
// Design Name: 
// Module Name: usage_of_class
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

class Myclass;                                //Declaration of class

string name;                                  //Class properties
int id;

function new(string myname, int myid);       //Constructor
this.name = myname;
this.id = myid;
endfunction

function void display_stmt();                //Method
$display("The name is %s and the id is %0d",name,id);
endfunction

task increment_id(int value);
id = id+value;
endtask

endclass

module usage_of_class;
Myclass obj = new("keerthee",22);             //Object creation

initial begin
obj.display_stmt();
obj.increment_id(10);
obj.display_stmt();
end

endmodule
