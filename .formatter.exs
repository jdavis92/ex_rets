locals_without_parens = [
  attribute: 3,
  child_element: 2,
  child_element: 3,
  element: 2,
  element: 4,
  root: 3,
  text: 2
]

[
  inputs: ["{mix,.formatter}.exs", "{config,lib,test}/**/*.{ex,exs}"],
  locals_without_parens: locals_without_parens,
  export: [locals_without_parens: locals_without_parens]
]
