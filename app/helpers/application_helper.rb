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
  def date_time(array)
    array.map { |el| el.to_datetime}.sort.map { |date| date.strftime("%b, %m %Y - %H:%M") }
  end
  def room_revenue(bookings, rooms, rooms_name)
    index = 0
    names = []
    rooms_name.each { |room| names << room.name }
    result = []
    (rooms.length).times do
      result << bookings.group_by { |i| i["room_id"] }[rooms[index]].map { |el| el["amount_centavos"] }.sum 
      index += 1
    end
    Hash[names.zip result]
  end
end
