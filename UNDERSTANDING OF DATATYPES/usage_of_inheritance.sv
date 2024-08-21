`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2024 21:23:14
// Design Name: 
// Module Name: usage_of_inheritance
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

function void display_stmt();                //Method
$display("The name is %s and the id is %0d",name,id);
endfunction


endclass

class childclass extends Myclass;                                    //Inherits parent class to child class

string dept;                                                         //properties of child class
int passout;

function display_data();                                            //Method
super.display_stmt();
$display("The Department is %s and the year of passout is %0d",dept,passout);
endfunction

endclass

module usage_of_inheritance;             //Object creation for parent class
childclass obj1 = new();            //Object creation for childclass

initial begin
obj1.name = "keerthee";
obj1.id = 322;
obj1.dept = "ECE";
obj1.passout = 2025;
obj1.display_data();
end

endmodule
