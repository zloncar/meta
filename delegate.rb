require 'forwardable'

class List
  extend Forwardable
  attr_accessor :info

  def_delegators :@items, :map, :size, :<<, :shuffle
  def_delegator :@items, :shift, :remove_item
  def_delegator :@items, :push, :add_item
  alias title info


  def initialize
    @items = []
  end

end

# require 'irb'
# IRB.start
