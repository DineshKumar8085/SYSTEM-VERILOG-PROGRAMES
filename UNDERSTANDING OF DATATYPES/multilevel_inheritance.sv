`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2024 22:47:57
// Design Name: 
// Module Name: multilevel_inheritance
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

class parent_class;
string name;
int age;

function void display_parent();
$display("NAME : %s || AGE : %0d",name,age);
endfunction

endclass

class child1 extends parent_class;
int id;

function void display_child1();
$display("ID : %0d",id);
endfunction

endclass

class child2 extends parent_class;
string dept;

function void display_child2();
$display("DEPARTMENT : %s",dept);
endfunction

endclass

class child_A extends child1;
string regno;

function void display_child_A();
$display("REGISTER NUMBER : %s",regno);
endfunction

endclass

class child_B extends child_A;
int year;

function void display_child_B();
$display("YEAR OF PASSOUT : %0d",year);
endfunction

endclass

module multilevel_inheritance;

 child_B obj = new();
 child2 obj1 = new();
 
initial begin

obj.name = "Dinesh";
obj.age = 20;
obj.id = 310;
obj.regno = "717821L310";
obj.year = 2025;
obj1.dept = "ECE";

obj.display_parent();
obj.display_child1();
obj1.display_child2();
obj.display_child_A();
obj.display_child_B();

end

endmodule
