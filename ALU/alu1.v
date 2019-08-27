module as(A, B, O, OUT, AVF, dontcare);

    input [3 : 0]A;
    input [3 : 0]B;
    input O; //o = 1, sub;
    o = 0 add;
    output [3 : 0]OUT;
    output AVF;
    wire As = A[3];
    wire Bs = B[3];
    reg [2 : 0]r1bc;
    output dontcare;
    wire [2 : 0]one_add;
    reg flag;

    assign one_add[0] = 1;
    assign one_add[1] = 0;
    assign one_add[2] = 0;

    wire x = As^Bs;

    reg [2 : 0]r1a, r1b;

    always@( *)
    BEGIN
        CASE({O, x})

        2'b00 : //ADD AND same sign
            BEGIN
                r1a[2 : 0] = A[2 : 0];
                r1b[2 : 0] = B[2 : 0];
                flag = 0;
            END

        2'b11 : //SUB AND diff sign
            BEGIN
                r1a[2 : 0] = A[2 : 0];
                r1b[2 : 0] = B[2 : 0];
                flag = 0;
            END

        2'b01 : //ADD AND diff sign
            BEGIN
                r1a[2 : 0] = A[2 : 0];
                r1b[2 : 0] = B[2 : 0];
                flag = 1;
            END
        endcase
    END

    wire [2 : 0]arr;

    twos t1(r1b[0], r1b[1], r1b[2], arr[0], arr[1], arr[2]);
    reg [2 : 0]arr1;
    always@( *)
    BEGIN
        CASE(flag)
            1'b1 :
                BEGIN
                    arr1[2 : 0] = arr[2 : 0];
                END
            1'b0 :
                BEGIN
                    arr1[2 : 0] = r1b[2 : 0];
                END
        endcase
    END

    ripple_adder rip1(r1a[2 : 0], arr1[2 : 0], OUT[2 : 0], AVF);

    assign OUT[3] = A[3];/ / Sign BIT output

endmodule
