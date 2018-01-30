var container = document.getElementById('bookings-table'),
hot;

var hot = new Handsontable(container, {
  data: data,
  colHeaders: ["Booking ID", "Room ID", "Amount BRL", "Fee %", "Booking Period", "Created at", "Paid at", "Booking Code"],
  columnSorting: true,
  sortOrder: Boolean,
  editor: false,
  preventOverflow: 'horizontal',
  stretchH: 'all',
  columnSorting: true,
  sortIndicator: true,
  manualColumnResize: true
});


