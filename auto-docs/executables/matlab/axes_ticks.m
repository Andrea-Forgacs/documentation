signin('theengineear', 'o9zlr0hy6z')

trace1 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [8, 7, 6, 5, 4, 3, 2, 1, 0], ...
  'type', 'scatter');
trace2 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'type', 'scatter');
data = {trace1, trace2};
layout = struct(...
    'xaxis', struct(...
      'tick0', 0, ...
      'dtick', 0.25, ...
      'ticks', 'outside', ...
      'ticklen', 8, ...
      'tickcolor', '#000', ...
      'tickwidth', 4, ...
      'autotick', false), ...
    'yaxis', struct(...
      'tick0', 0, ...
      'dtick', 0.25, ...
      'ticks', 'outside', ...
      'ticklen', 8, ...
      'tickcolor', '#000', ...
      'tickwidth', 4, ...
      'autotick', false));

response = plotly(data, struct('layout', layout, 'filename', 'axes-ticks', 'fileopt', 'overwrite', 'auto_open', 'false'));
plot_url = response.url