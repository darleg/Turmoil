from numpy import empty
from pylab import plot, show, figure, axis

# Lorenz Equation

# dx/dt = σ(y-x)
# dy/dt = ρx - y - xz
# dz/dt = xy - βz

# Environment
# σ(sigma) ratio of fluid viscosity to thermal conductivity
# ρ(rho) difference in temperature between the top and bottom of the system
# β(beta) is the ratio of box width to box height

# Time-evolving variables
#  x convective flow
#  y horizontal temperature distribution
#  z vertical temperature distribution


def lorenz(x, y, z, sigma = 10, rho = 28, beta = 2.66):
    
    dx = sigma*(y - x)
    dy = rho*x - y - x*z
    dz = x*y - beta*z
    return dx, dy, dz

DeltaTime = 0.01
TimeEvolving = 5000

xv = empty(TimeEvolving + 1)
yv = empty(TimeEvolving + 1)
zv = empty(TimeEvolving + 1)

xv[0], yv[0], zv[0] = (0., 1., 1.05)

for i in range(TimeEvolving):
    dx, dy, dz = lorenz(xv[i], yv[i], zv[i])
    xv[i + 1] = xv[i] + (dx * DeltaTime)
    yv[i + 1] = yv[i] + (dy * DeltaTime)
    zv[i + 1] = zv[i] + (dz * DeltaTime)

ax = figure(facecolor = 'black').add_subplot(projection='3d')
ax.plot(xv, yv, zv, color = 'green', lw = 0.5)
ax.set_facecolor('Black')
axis('off')
show()
