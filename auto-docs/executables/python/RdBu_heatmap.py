import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('theengineear', 'o9zlr0hy6z')

import numpy as np

size = 50
z = np.zeros((size, size)).tolist()
for r in range(1, size + 1):
    for c in range(1, size + 1):
        z[r-1][c-1] = np.sqrt(r*c/float(size**2))
data = Data([
    Heatmap(
        z=z,
        scl='RdBu'
    )
])
layout = Layout(
    title='RdBu'
)
fig = Figure(data=data, layout=layout)

plot_url = py.plot(fig, filename='RdBu-heatmap', auto_open=False)