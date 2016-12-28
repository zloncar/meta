def foo(a, b)
  a + yield(a, b)
end

# foo(1, 2) # => no block given error
foo(1, 2) { 5 } # => 6
foo(1, 2) { |x, y| 2 * x + 3 * y } # => 9

def bar(a)
  x = 5
  yield a + x
end

bar(7) { } # => nil
bar(7) { 3 } # => 3
bar(7) { |i| i } # => 12
x = 50
bar(7) { |i| i + x } # => 62
bar(7) { x } # => 50 .... hmmm

