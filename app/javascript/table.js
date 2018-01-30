var container = document.getElementById('table'),
hot;
var hot = new Handsontable(container, {
  data: data,
  colHeaders: true
  minSpareRows: 1
});