foo = 'Success'

Bar = Class.new do
  foo # => Success

  define_method :baz do
    foo
  end
end

bar = Bar.new
bar.baz # => Success
