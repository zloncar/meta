module MyForwardable
  def def_delegator(accessor, method, ali=method)
    p accessor
    p method
    define_method(ali) { |*args| send(accessor).send(method, *args) }
  end

  def def_delegators(accessor, *methods)
    for method in methods
      def_delegator(accessor, method)
    end
  end
end
