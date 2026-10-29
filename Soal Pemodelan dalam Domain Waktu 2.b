>> num=[1 2 12 7 6];
>> den=[1 9 13 8 0 0];
>> [Acc, Bcc, Ccc, Dcc]=tf2ss(num,den)

Acc = 5×5
     -9     -13     -8     0     0
      1       0      0     0     0
      0       1      0     0     0
      0       0      1     0     0
      0       0      0     1     0


Bcc = 5×1
     1
     0
     0
     0
     0


Ccc = 1×5
     1     2     12     7     6


Dcc =

     0

>> A=fliplr(flipud(Acc))

A = 5×5
     0     1      0       0      0
     0     0      1       0      0
     0     0      0       1      0
     0     0      0       0      1
     0     0     -8     -13     -9

>> B=flipud(Bcc)

B = 5×1
     0
     0
     0
     0
     1

>> C=fliplr(Ccc)

C = 1×5
     6     7     12     2     1

>> D=Dcc

D =

     0
