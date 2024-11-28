ReDim Alpha(10)
ReDim Beta(10)
ReDim x(10)
ReDim y(10)
ReDim WXX1(6)
ReDim WYY1(6)
ReDim WXX2(6)
ReDim WYY2(6)

Alpha(1) = -0.4: Beta(1) = 1
Alpha(2) = -0.4: Beta(2) = 1
Alpha(3) = -0.2: Beta(3) = 1
Alpha(4) = -0.48: Beta(4) = 0.93
Alpha(5) = -0.4: Beta(5) = 0.99
Alpha(6) = -0.25: Beta(6) = 0.998

WX1(1) = -24: WY1(1) = -18
WX1(2) = -40: WY1(2) = -32
WX1(3) = -24: WY1(3) = -18
WX1(4) = -16: WY1(4) = -14
WX1(5) = -16: WY1(5) = -12
WX1(6) = -16: WY1(6) = -12

WX2(1) = 24: WY2(1) = 18
WX2(2) = 40: WY2(2) = 32
WX2(3) = 24: WY2(3) = 18
WX2(4) = 16: WY2(4) = 10
WX2(5) = 16: WY2(5) = 12
WX2(6) = 16: WY2(6) = 12

x(1) = 4: y(1) = 0
x(2) = 20: y(2) = 0
x(3) = 10: y(3) = 0
x(4) = 4: y(4) = 0
x(5) = 4: y(5) = 0
x(6) = 3: y(6) = 0

Screen 12

For M = 1 To 6

    Cls

    Window (WX1(M), WY1(M))-(WX2(M), WY2(M))

    Points = 12000
    C = 2 - 2 * Alpha(M)

    FX = Alpha(M) * x(M) + C * x(M) * x(M) / (1 + x(M) * x(M))
    For N = 0 To Points
        If N > 100 Then PSet (x(M), y(M)), M
        Z = x(M)
        x(M) = Beta(M) * y(M) + FX
        XX = x(M) * x(M)
        FX = Alpha(M) * x(M) + C * XX / (1 + XX)
        y(M) = FX - Z
    Next N
    Input "RETERN", R$
Next M


