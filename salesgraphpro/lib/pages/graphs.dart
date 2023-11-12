import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:salesgraphpro/pages/data.dart';

class GraphPage extends StatefulWidget {

  final SalesData salesData;

  const GraphPage({required this.salesData, Key? key}) : super(key: key);

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Gráfico de Ventas'),
        
      ),
      body: Center(
        child: SfCircularChart(
          backgroundColor: Color(0xffEDEDED),
          title:
              ChartTitle(text: 'Cantidad de ventas por regiones en millones'),
          legend: Legend(
            isVisible: true,
            overflowMode: LegendItemOverflowMode.wrap,
            position: LegendPosition.bottom,
          ),
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
                enable: true,
              ),
              explode: true,
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffEDEDED),
    );
  }

    List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('America',widget.salesData.americaSales, Color(0xff005F58)),
      GDPData('Europa', widget.salesData.europeSales, Color(0xff004F5F)),
      GDPData('Africa', widget.salesData.africaSales, Color(0xff00375F)),
      GDPData('Oceania', widget.salesData.oceaniaSales, Color(0xff001F5F)),
      GDPData('Asia', widget.salesData.asiaSales, Color(0xff00075F)),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp, this.color);
  final String continent;
  final double gdp;
  final Color color;
}