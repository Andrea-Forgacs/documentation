using Plotly

using Plotly
Plotly.signin("theengineear", "o9zlr0hy6z")

data = [
  [
    "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    "y" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    "type" => "scatter"
  ]
]
layout = [
  "width" => 500, 
  "height" => 500, 
  "autosize" => false, 
  "margin" => [
    "l" => 50, 
    "r" => 50, 
    "b" => 100, 
    "t" => 100, 
    "pad" => 4
  ], 
  "paper_bgcolor" => "#7f7f7f", 
  "plot_bgcolor" => "#c7c7c7"
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "size-margins", "fileopt" => "overwrite", "auto_open" => "false"])
plot_url = response["url"]