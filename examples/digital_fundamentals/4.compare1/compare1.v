//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   comparer1.v
//   Module name     :   comparer1
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   一位二进制比较器，采用结构化描述方式
//********************************************************

module compare1
(
input wire a,           //定义输入的两个数a、b
input wire b,
output wire led1,     //定义三种输出结果对应的led
output wire led2,
output wire led3
);
          
assign led1 = (!a)&b;    //a<b
assign led2 = !(a^b);    //a=b
assign led3 = a&(!b);    //a>b

endmodule
