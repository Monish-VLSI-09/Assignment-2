//Implement Y= A|B|C + A.B.E + |B.C + C|D using delay value 3for andgates,2 for or gates and 4 for not gates. 
  Use two inputs and, or gates only.
  Note: |B|C means (not B) and (not c).

module random_2(A,B,C,D,E,Y);
  input A,B,C,D,E;
  output Y;
  wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10; 
  
  not #4 n1 (Bbar,B);     // Bbar = B 
  not #4 n2 (Cbar,C);     // Cbar = D
  not #4 n3 (Dbar,D);     // Dbar = D
  and #3 a1 (t1,A,Bbar);  // t1 = A & Bbar
  and #3 a2 (t2,t1,Cbar); // t2 = (A & Bbar) & Cbar
  and #3 a3 (t3,A,B);     // t3 = A & B
  and #3 a4 (t4,t3,E);    // t4 = (A & B) & E
  and #3 a5 (t5,Bbar,C);  // t5 = Bbar & C
  and #3 a6 (t6,C,Dbar);  // t6 = C & Dbar
  or #2 o1 (t7,t1,t2);    // t7 = 
  or #2 o2 (t8,t3,t4);
  or #2 o3 (t9,t5,t6);
  or #2 o4 (t10,t7,t8);
  or #2 o5 (Y,t10,t9);
endmodule

