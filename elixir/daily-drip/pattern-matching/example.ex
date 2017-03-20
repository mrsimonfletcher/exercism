# Match Operator
foo = 1
{:example, bar} = {:example, 3} # => bar = 3
^bar # => means you don't want to change the bound value but you want to use it in an expression

# Functions
print_name = fn
  :josh -> "Hey Josh!",
  _     -> "Hey, what is your name?"
end

print_name.(:josh)  # => Hey Josh!
print_name.(:simon) # => Hey, what is your name?

# Case statements
case {1, 2, 3} do
  {4, 5, 6} -> "No match here"
  {1, 2, 3} -> "This matches"
  {_, 2, 3} -> "This would match but the above has covered the example when it is 1"
end
