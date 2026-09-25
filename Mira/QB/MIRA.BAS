Screen 12
Cls
Window (-20, -15)-(20, 15)
Alpha = 0.7
Beta = .9998
Points = 12000
C = 1 - 2 * A
Rem STARTING POINT
X = 0
Y = 12.1
FX = Alpha * X + C * X * X / (1 + X * X)
For N = 0 To Points
    If N > 100 Then PSet (X, Y), 5
    If N > 3000 Then PSet (X, Y), 6
    If N > 9000 Then PSet (X, Y), 3
    Z = X
    X = Beta * Y + FX
    XX = X * X
    FX = Alpha * X + C * XX / (1 + XX)
    Y = FX - Z
Next N
A$ = Input$(1)
End
