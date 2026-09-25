Time = 0.01
x = 0.6
y = 0.6
z = 0.6

Rem quotient of viscosity and thermal conductivity
Sigma = 10

Rem temperature difference of the heated layer
Roe = 28

Rem Beta or Physical Dimensions of Cell
Beta = 8 / 3

Points = 4000
Screen 12
Window (-25, -60)-(25, 60)


For i = 1 To Points

    Fx = Sigma * (y - x)
    Fy = Roe * x - y - x * z
    Fz = x * y - Beta * z
    Tx = x + Time * Fx
    Ty = y + Time * Fy
    Tz = z + Time * Fz
    x = Tx
    y = Ty
    z = Tz
    Xs = x * 31 / z
    Ys = y * 31 / z


    PSet (Xs, Ys), 5

Next i

