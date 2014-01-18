var a;
var b;
var c;
$(function() {
    Highcharts.setOptions({
        global: {
            useUTC: false
        }
    });
});
$(function() {
    chartData = JSON.parse($('#chart-data').val())
    window.chart = new Highcharts.StockChart({
        chart: {
            renderTo: 'highcharttest',
        },
        scrollbar: {
            enabled: false
        },
        rangeSelector: {
            selected: 1,
            buttons:[
                { type: "day", count: 1, text: "1d" },
                { type: "day", count: 3, text: "3d" },
                { type: "day", count: 5, text: "5d" },
                { type: "week", count: 1, text: "1w" },
                { type: "month", count: 1, text: "1m" },
                { type: "all", count: 1, text: "ALL" },
            ],
        },
        title: {
            text: ''
        },
        credits: {
            text: ''
        },
        navigator: {
            enabled : true
        },
        series: [{
            name: 'line1',
            data: chartData,
            type:  'spline',
            tooltip: {
                yDecimals: 2
            }
        }],
        yAxis: [{
            min: 0,
        }],
    });
});
