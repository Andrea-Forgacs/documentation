import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('theengineear', 'o9zlr0hy6z')

data = Data([
    Scatter(
        x=[1, 2, 3, 4],
        y=[2, 1, 3, 4],
        error_x=ErrorX(
            value=10,
            type='percent'
        )
    )
])

plot_url = py.plot(data, filename='error-bar-horizontal', auto_open=False)