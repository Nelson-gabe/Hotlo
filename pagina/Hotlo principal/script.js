document.getElementById('form').addEventListener('submit', function(event) {
    event.preventDefault();

    var revenue = parseFloat(document.getElementById('revenue').value);
    var expenses = parseFloat(document.getElementById('expenses').value);

    var profit = revenue - expenses;

    document.getElementById('result').textContent = 'Profit: $' + profit.toFixed(2);
});