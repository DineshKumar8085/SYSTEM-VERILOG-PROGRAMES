`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2024 14:49:18
// Design Name: 
// Module Name: usage_of_queues
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


module usage_of_queues;
int que[$];                                                                      //Declaration of Unbounded queue

initial begin

$display("Initial size of the queue is %0d",que.size());
que = {6,8};                                                                     //Initialization of the queue
$display("The size of the queue is %0d",que.size());
$display("--------------------------------------------------");

que.insert(1,7);                                                                 //Usage of insert method
que.insert(3,9);
que.insert(4,10);
$display("The size of the queue is %0d",que.size());

foreach(que[i]) $display("que[%0d] = %0d",i,que[i]);
$display("--------------------------------------------------");

$display("-----------Accesing queue elements----------------");
$display("The second element of queue is %0d",que[2]);
$display("The fourth element of queue is %0d",que[4]);
$display("--------------------------------------------------");

$display("-----------Push_front Method----------------");
que.push_front(50);
foreach(que[i]) $display("que[%0d] = %0d",i,que[i]);
$display("--------------------------------------------------");

$display("-----------Push_back Method----------------");
que.push_back(100);
foreach(que[i]) $display("que[%0d] = %0d",i,que[i]);
$display("--------------------------------------------------");

$display("-----------Pop_front Method----------------");
que.pop_front();
foreach(que[i]) $display("que[%0d] = %0d",i,que[i]);
$display("--------------------------------------------------");

$display("-----------Pop_back Method----------------");
que.pop_back();
foreach(que[i]) $display("que[%0d] = %0d",i,que[i]);
$display("--------------------------------------------------");

$display("-----------Delete Queue item----------------");
que.delete(2);
foreach(que[i]) $display("que[%0d] = %0d",i,que[i]);
$display("--------------------------------------------------");

$display("-----------Delete Complete Queue----------------");
que.delete();
foreach(que[i]) $display("que[%0d] = %0d",i,que[i]);
$display("The size of the queue is %0d",que.size());
$display("--------------------------------------------------");

end

endmodule
