`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 11:37:54
// Design Name: 
// Module Name: usage_of_arrays
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


module usage_of_arrays;
int array[0:4] = '{100, 200, 300, 400, 500};                                                       // Declaration and initialization of single dimensional array
int array1[0:5][0:1] = '{'{1, 100}, '{2, 200}, '{3, 300}, '{4,400}, '{5, 500}, '{6, 600}};         // Declaration and initialization of two dimensional array and unpacked array
int arr2[0:2][0:2][0:2] = '{'{'{1, 10, 100}, '{2, 20, 200}, '{3, 30, 300}},                        // Declaration and initialization of three dimensional array    
                          '{'{4, 40, 400}, '{5, 50, 500}, '{6, 60, 600}},
                          '{'{7, 70, 700}, '{8, 80, 800}, '{9, 90, 900}}
                        };
bit [0:2][0:3]arr3= '{2, 4, 6};                                                                    // Declaration and initialization of packed array
bit [0:4] arr4[0:2][0:1] = '{'{5'h5, 5'h1},                                                        // Combination of both packed and unpacked array     
                              '{5'h10, 5'h2},
                              '{5'h15, 5'h3}
                               };

 //displaying arr elements -single dimensional array
 
  initial begin
  $display ("--------------Displaying single dimensional array----------------------");
    foreach (array[i]) begin
      $display("array[%0d] = %0d", i, array[i]);
    end
    $display ("--------------End of the array----------------------");
  end
  
  //displaying arr1 elements -two dimensional and unpacked array 
  
  initial begin
  $display ("--------------Displaying two dimensional array and unpacked array----------------------");
    foreach (array1[i,j]) begin
      $display("array1[%0d][%0d] = %0d", i,j, array1[i][j]);
    end
    $display ("--------------End of the array----------------------");
  end
  
  //displaying arr2 elements - three dimensional array
  initial begin
  $display ("--------------Displaying three dimensional array----------------------");
    foreach (arr2[i,j,k]) begin
      $display("array2[%0d][%0d][%0d] = %0d", i,j,k, array1[i][j][k]);
    end
    $display ("--------------End of the array----------------------");
  end
  
  //displaying arr3 elements - packed array
  initial begin
  $display ("--------------Displaying packed array----------------------");
    foreach (arr3[i,j]) begin
      $display("array3[%0d][%0d] = %0d", i,j, arr3[i][j]);
    end
    $display ("--------------End of the array----------------------");
  end
  
  //displaying arr4 elements - packed array
  initial begin
  $display ("--------------Displaying of both packed and unpacked array----------------------");
    foreach (arr4[i,j]) begin
      $display("array4[%0d][%0d] = %0h", i,j, arr4[i][j]);
    end
    $display ("--------------End of the array----------------------");
  end

endmodule
