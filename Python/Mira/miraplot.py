# Import libraries
from numpy import empty, arange, random, array
from pylab import plot, show, figure, axis, scatter


alpha = 0.7
beta = .9998
points = 15000
c = 1 - 2 * alpha

xs = empty(points)
ys = empty(points)

# STARTING POINT
x = 0
y = 12.1
fx = alpha * x + c * x * x / (1 + x * x)
for n in range(points):
    z = x
    x = beta * y + fx
    xx = x * x
    fx = alpha * x + c * xx / (1 + xx)
    y = fx - z
    xs[n] = x
    ys[n] = y

ax = figure(facecolor='black' ).add_subplot()
ax.plot(xs, ys, color = 'red',
        ls  = '',
        marker =",",)
axis('off')
show()
