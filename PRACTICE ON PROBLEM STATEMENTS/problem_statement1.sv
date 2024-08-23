/*Problem Statement: Create a Car class with properties like make, model, year, and speed. Implement methods accelerate() to increase the speed by a given amount 
and brake() to decrease the speed. Instantiate the Car class, simulate a few accelerations and braking events, and display the results.*/

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2024 09:49:11
// Design Name: 
// Module Name: testbench
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

class Car;

int year,speed;
string name,model;

int speedchange;

function new(input int year, input int speed, input string name, input string model, input int speedchange);
this.year = year;
this.speed = speed;
this.name = name;
this.model = model;
this.speedchange = speedchange;
endfunction

function int accelerate(input int raise);
speedchange = speedchange+raise;
$display("------------------Speed after acceleration-----------------------");
$display("The speed after acceleration : %0d kmph",speedchange);
$display("-----------------------------------------------------------------");
endfunction

function int brake(input int low);
speedchange = speedchange-low;
$display("------------------Speed after Brake------------------------------");
$display("The speed after applying Brake : %0d kmph",speedchange);
$display("-----------------------------------------------------------------");
endfunction

function void display();
$display("------------------Details of the Car-----------------------");
$display("The name of the Car is %s and the model is %s",name,model);
$display("Manufactured year is %0d and has a Top speed of %0d kmph",year,speed);
$display("------------------------------------------------------------");
endfunction
endclass

module testbench;
Car obj = new(2014, 140, "THAR", "OFF-ROAD SUV", 35);
Car obj1 = new(2020, 161, "RENAULT", "DUSTER", 40);

initial begin
obj.display();
obj.accelerate(60);
obj.brake(90);
obj1.display();
obj1.accelerate(45);
obj1.brake(30);
end

endmodule
