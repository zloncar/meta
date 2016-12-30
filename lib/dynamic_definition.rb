require_relative './data_source.rb'

class Computer
  def initialize(computer_id, data_source)
    @computer_id = computer_id
    @data_source = data_source
  end

  def cpu
    component :cpu
  end

  def screen
    component :screen
  end

  def component(name)
    info = @data_source.send "get_#{name}_info", @computer_id
    price = @data_source.send "get_#{name}_price", @computer_id
    "#{name.to_s.capitalize}: #{info} (#{price})"
  end
end
