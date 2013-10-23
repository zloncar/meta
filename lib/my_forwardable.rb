module MyForwardable

# def def_delegators(accessor, *methods)
#   for method in methods
#     def_delegator(accessor, method)
#   end
# end

# def def_delegator(accessor, method, ali = method)

#   module_eval(<<-EOS, "(__FORWARDABLE__)", 1)
#     def #{ali}(*args, &block)
#       #{accessor}.__send__(:#{method}, *args, &block)
#     end
#   EOS
# end


  def def_delegator(accessor, method, ali=method)
    p accessor
    p method
    define_method(ali) { |*args| send(accessor).send(method, *args) }
  end

end
