Time = 0.01
x = 0.6
y = 0.6
z = 0.6

Sigma = 10
Roe = 28
Beta = 8 / 3

Pionts = 4000

Screen 12
Window (-25, -60)-(25, 60)


For i = 1 To Pionts

    Fx = Sigma * (y - x)
    Fy = Roe * x - y - x * z
    Fz = x * y - Beta * z
    Tx = x + Time * Fx
    Ty = y + Time * Fy
    Tz = z + Time * Fz
    x = Tx
    y = Ty
    z = Tz

    PSet (x, y), 5

Next i

