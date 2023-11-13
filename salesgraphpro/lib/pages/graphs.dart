import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Graphs(),
    );
  }
}

class Graphs extends StatefulWidget {
  @override
  _GraphsState createState() => _GraphsState();
}

class _GraphsState extends State<Graphs> {
  // Variable para rastrear qué gráfico se debe mostrar actualmente
  bool showGraphPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Botones para cambiar entre los gráficos
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showGraphPage = true;
                  });
                },
                child: Text('Mostrar GraphPage'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showGraphPage = false;
                  });
                },
                child: Text('Mostrar LineGraph'),
              ),
            ],
          ),
          // Mostrar el gráfico correspondiente
          Expanded(
            flex: 1,
            child: showGraphPage ? GraphPage() : LinGraph(),
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
        padding: EdgeInsets.all(8),
        child: SfCircularChart(
          backgroundColor: Color(0xffEDEDED),
          title:
              ChartTitle(text: 'Cantidad de ventas por regiones en millones'),
          legend: Legend(
              isVisible: true,
              overflowMode: LegendItemOverflowMode.wrap,
              position: LegendPosition.bottom),
          tooltipBehavior: TooltipBehavior(),
          series: <CircularSeries>[
            PieSeries<GDPData, String>(
              dataSource: _chartData,
              xValueMapper: (GDPData data, _) => data.continent,
              yValueMapper: (GDPData data, _) => data.gdp,
              dataLabelSettings: DataLabelSettings(isVisible: true),
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
      GDPData('America', 1600, Color(0xff005F58)),
      GDPData('Europa', 2800, Color(0xff004F5F)),
      GDPData('Africa', 500, Color(0xff00375F)),
      GDPData('Oseania', 1200, Color(0xff001F5F)),
      GDPData('Asia', 2000, Color(0xff00075F)),
    ];
    return chartData;
  }
}

class LinGraph extends StatelessWidget {
  const LinGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(show: true),
          borderData: FlBorderData(show: true),
          gridData: FlGridData(show: true),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              color: Color.fromARGB(255, 2, 2, 2),
              dotData: FlDotData(show: true),
              spots: [
                const FlSpot(0, 10),
                const FlSpot(1, 24),
                const FlSpot(2, 15),
                const FlSpot(3, 17),
                const FlSpot(4, 20),
                const FlSpot(5, 14),
                const FlSpot(6, 21),
                const FlSpot(7, 22),
                const FlSpot(8, 12),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GDPData {
  GDPData(this.continent, this.gdp, this.color);

  final String continent;
  final int gdp;
  final Color color;
}
