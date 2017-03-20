# atom
:foo
:bar
:example
:"my atom" #can contain spaces when wrapped with a string

# Numbers
1234567
1_234_567
12 + 11
10 + 8

1.23 # floating point number

# Lists
[:foo, :bar]
[:also, [:can, :contain, :other, :lists]]

a = [1, 2, 3]
head = hd(a)
tail = tl(a)

# Tuples
{:foo, :bar}

# Keyword lists
[author: "Josh Adams", title: "Basic Elixir"]

# Regular Expressions
Regex.replace ~r/[aeiou]/, "Begining Elixir"

# Booleans
false == :false
nil == :nil
