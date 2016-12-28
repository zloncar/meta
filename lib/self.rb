class Foo
  attr_accessor :bar

  def testing_self
    @bar = 5
    my_method
    self
  end

  def my_method
    @bar += 1
  end
end
