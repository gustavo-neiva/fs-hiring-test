var container = document.getElementById('table'),
hot;

var hot = new Handsontable(container, {
  data: data,
  colHeaders: ["Booking ID", "Room ID", "Amount BRL", "Fee %", "Booking Period", "Created at", "Paid at", "Booking Code"],
  columnSorting: true,
  sortOrder: Boolean,
  minSpareRows: 1,
  editor: false,
});
