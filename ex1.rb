blah = class A
  def initialize
    @a = 11
    @@a = 22
    a = 33
  end
  @a = 1
  @@a = 2
  a = 3
end

A.instance_variable_get(:@a)      # => 1
A.class_variable_get(:@@a)        # => 2
blah                              # => 3
A.new.instance_variable_get(:@a)  # => 11
A.class_variable_get(:@@a)        # => 22
A.new.send(:initialize)           # => 33

