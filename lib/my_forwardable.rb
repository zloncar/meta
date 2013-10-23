module MyForwardable
  def def_delegator(accessor, method, ali=method)
    define_method(ali) do |*args, &block|
      send(accessor).send(method, *args, &block)
    end
  end

  def def_delegators(accessor, *methods)
    unless methods.size == 0
      def_delegator(accessor, methods[0])
      methods.shift
      def_delegators(accessor, *methods)
    end
  end
end
