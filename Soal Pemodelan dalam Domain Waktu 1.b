>> % 'b;
>> num=30;
>> den=[1 8 9 6 1 30];
>> G=tf(num,den)

G = 

                   30
  ------------------------------------
  s^5 + 8 s^4 + 9 s^3 + 6 s^2 + s + 30
 
Continuous-time transfer function.
Model Properties
>> [Acc,Bcc,Ccc,Dcc]=tf2ss(num,den);
>> Af=flipud(Acc);
>> A=fliplr(Af)

A = 5×5
       0      1      0      0      0
       0      0      1      0      0
       0      0      0      1      0
       0      0      0      0      1
     -30     -1     -6     -9     -8

>> B=flipud(Bcc)

B = 5×1
     0
     0
     0
     0
     1

>> C=fliplr(Ccc)

C = 1×5
     30     0     0     0     0
