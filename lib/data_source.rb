class DataSource

  def get_cpu_price(id)
    {
      A1: '$220',
      A2: '$221',
      A3: '$222',
    }.fetch(id, '$99')
  end

  def get_cpu_info(id)
    {
      A1: '2.16 Ghz',
      A2: '2.17 Ghz',
      A3: '2.18 Ghz',
    }.fetch(id, 'foo')
  end

  def get_screen_price(id)
    {
      A1: '$120',
      A2: '$121',
      A3: '$122',
    }.fetch(id, '$99')
  end

  def get_screen_info(id)
    {
      A1: '14 inch',
      A2: '15 inch',
      A3: '16 inch',
    }.fetch(id, 'foo')
  end
end
