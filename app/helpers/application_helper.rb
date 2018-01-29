module ApplicationHelper
  def number_to_currency_br(number)
    number_to_currency(number, :unit => "R$ ", :separator => ",", :delimiter => ".")
  end
  def data_fetch(data_set, key)
    data_set.map { |el| el.fetch(key)}
  end
  def data_graph (array1, array2)
    Hash[array1.zip(array2)]
  end
end
