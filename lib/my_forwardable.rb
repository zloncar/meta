module MyForwardable
  def def_delegator(accessor, method, ali=method)
    p accessor
    p method
    define_method(ali) { |*args, &block| send(accessor).send(method, *args, &block) }
  end

  def def_delegators(accessor, *methods)
    for method in methods
      def_delegator(accessor, method)
    end
  end
end
