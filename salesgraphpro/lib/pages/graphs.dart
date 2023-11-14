import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Graphs(),
    );
  }
}

class Graphs extends StatefulWidget {
  const Graphs({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GraphsState createState() => _GraphsState();
}

class _GraphsState extends State<Graphs> {
  bool showGraphPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showGraphPage = true;
                  });
                },
                child: const Text('Mostrar CircularGraph'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showGraphPage = false;
                  });
                },
                child: const Text('Mostrar LineGraph'),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: showGraphPage ? const GraphPage() : const LinGraph(),
          ),
        ],
      ),
    );
  }
}

class GraphPage extends StatefulWidget {
  const GraphPage({Key? key}) : super(key: key);

  @override
  State<GraphPage> createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  late List<GDPData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: SfCircularChart(
          backgroundColor: const Color(0xffEDEDED),
          title: ChartTitle(text: 'Cantidad de ventas por regiones (mill.)'),
          legend: const Legend(
              isVisible: true,
              overflowMode: LegendItemOverflowMode.wrap,
              position: LegendPosition.bottom),
          tooltipBehavior: TooltipBehavior(),
          series: <CircularSeries>[
            PieSeries<GDPData, String>(
              dataSource: _chartData,
              xValueMapper: (GDPData data, _) => data.continent,
              yValueMapper: (GDPData data, _) => data.gdp,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
              pointColorMapper: (GDPData data, _) => data.color,
              selectionBehavior: SelectionBehavior(
                  selectedBorderWidth: 1,
                  selectedBorderColor: const Color.fromARGB(255, 54, 244, 155),
                  enable: true),
              explode: true,
            ),
          ],
        ),
      ),
    );
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('América', 1600, const Color(0xff005F58)),
      GDPData('Europa', 2800, const Color(0xff004F5F)),
      GDPData('África', 500, const Color(0xff00375F)),
      GDPData('Oceanía', 1200, const Color(0xff001F5F)),
      GDPData('Asia', 2000, const Color(0xff00075F)),
    ];
    return chartData;
  }
}

class LinGraph extends StatefulWidget {
  const LinGraph({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LinGraphState createState() => _LinGraphState();
}

class _LinGraphState extends State<LinGraph> {
  late List<SalesData> _chartDataLine1;
  late List<SalesData> _chartDataLine2;
  late List<SalesData> _chartDataLine3;
  late List<SalesData> _chartDataLine4;
  late List<SalesData> _chartDataLine5;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartDataLine1 = getChartDataLine1();
    _chartDataLine2 = getChartDataLine2();
    _chartDataLine3 = getChartDataLine3();
    _chartDataLine4 = getChartDataLine4();
    _chartDataLine5 = getChartDataLine5();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SfCartesianChart(
      title: ChartTitle(text: 'Análisis Anual Ventas'),
      legend: const Legend(isVisible: true),
      tooltipBehavior: _tooltipBehavior,
      series: <ChartSeries>[
        LineSeries<SalesData, String>(
            name: 'América',
            dataSource: _chartDataLine1,
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
            dataLabelSettings: const DataLabelSettings(isVisible: false),
            enableTooltip: true),
        LineSeries<SalesData, String>(
            name: 'Europa',
            dataSource: _chartDataLine2,
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
            dataLabelSettings: const DataLabelSettings(isVisible: false),
            enableTooltip: true),
        LineSeries<SalesData, String>(
            name: 'África',
            dataSource: _chartDataLine3,
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
            dataLabelSettings: const DataLabelSettings(isVisible: false),
            enableTooltip: true),
        LineSeries<SalesData, String>(
            name: 'Oceanía',
            dataSource: _chartDataLine4,
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
            dataLabelSettings: const DataLabelSettings(isVisible: false),
            enableTooltip: true),
        LineSeries<SalesData, String>(
            name: 'Asia',
            dataSource: _chartDataLine5,
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
            dataLabelSettings: const DataLabelSettings(isVisible: false),
            enableTooltip: true)
      ],
      primaryXAxis: CategoryAxis(
        edgeLabelPlacement: EdgeLabelPlacement.shift,
      ),
      primaryYAxis: NumericAxis(
          labelFormat: '{value}M',
          numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)),
    )));
  }

  List<SalesData> getChartDataLine1() {
    final List<SalesData> chartDataLine1 = [
      SalesData("Enero", 100),
      SalesData("Febrero", 150),
      SalesData("Marzo", 75),
      SalesData("Abril", 125),
      SalesData("Mayo", 50),
      SalesData("Junio", 150),
      SalesData("Julio", 75),
      SalesData("Agosto", 125),
      SalesData("Septiembre", 50),
      SalesData("Octubre", 75),
      SalesData("Noviembre", 50),
      SalesData("Diciembre", 75),
    ];
    return chartDataLine1;
  }

  List<SalesData> getChartDataLine2() {
    final List<SalesData> chartDataLine2 = [
      SalesData("Enero", 175),
      SalesData("Febrero", 100),
      SalesData("Marzo", 150),
      SalesData("Abril", 125),
      SalesData("Mayo", 200),
      SalesData("Junio", 175),
      SalesData("Julio", 100),
      SalesData("Agosto", 150),
      SalesData("Septiembre", 200),
      SalesData("Octubre", 125),
      SalesData("Noviembre", 200),
      SalesData("Diciembre", 150),
    ];
    return chartDataLine2;
  }

  List<SalesData> getChartDataLine3() {
    final List<SalesData> chartDataLine3 = [
      SalesData("Enero", 40),
      SalesData("Febrero", 20),
      SalesData("Marzo", 60),
      SalesData("Abril", 50),
      SalesData("Mayo", 70),
      SalesData("Junio", 40),
      SalesData("Julio", 20),
      SalesData("Agosto", 60),
      SalesData("Septiembre", 50),
      SalesData("Octubre", 70),
      SalesData("Noviembre", 50),
      SalesData("Diciembre", 40),
    ];
    return chartDataLine3;
  }

  List<SalesData> getChartDataLine4() {
    final List<SalesData> chartDataLine4 = [
      SalesData("Enero", 100),
      SalesData("Febrero", 50),
      SalesData("Marzo", 75),
      SalesData("Abril", 60),
      SalesData("Mayo", 100),
      SalesData("Junio", 100),
      SalesData("Julio", 50),
      SalesData("Agosto", 75),
      SalesData("Septiembre", 60),
      SalesData("Octubre", 75),
      SalesData("Noviembre", 60),
      SalesData("Diciembre", 50),
    ];
    return chartDataLine4;
  }

  List<SalesData> getChartDataLine5() {
    final List<SalesData> chartDataLine5 = [
      SalesData("Enero", 160),
      SalesData("Febrero", 80),
      SalesData("Marzo", 120),
      SalesData("Abril", 100),
      SalesData("Mayo", 160),
      SalesData("Junio", 160),
      SalesData("Julio", 80),
      SalesData("Agosto", 120),
      SalesData("Septiembre", 100),
      SalesData("Octubre", 120),
      SalesData("Noviembre", 100),
      SalesData("Diciembre", 80),
    ];
    return chartDataLine5;
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

class GDPData {
  GDPData(this.continent, this.gdp, this.color);
  final String continent;
  final int gdp;
  final Color color;
}
