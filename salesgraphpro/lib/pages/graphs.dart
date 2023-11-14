import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphPage extends StatefulWidget {
  const GraphPage({super.key});

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
      child: Scaffold(
        body: SfCircularChart(
          backgroundColor: Color(0xffEDEDED),
          title: 
            ChartTitle(text: 'Cantidad de ventas por regiones en millones'),
          legend: 
            Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap,position: LegendPosition.bottom),
          tooltipBehavior: TooltipBehavior(), 
          series: <CircularSeries>[
            PieSeries<GDPData, String>(
              dataSource: _chartData,
              xValueMapper: (GDPData data, _) => data.continent,
              yValueMapper: (GDPData data, _) => data.gdp,
              dataLabelSettings: DataLabelSettings(isVisible: true),
              pointColorMapper: (GDPData data, _) => data.color,
              selectionBehavior: SelectionBehavior(selectedBorderWidth: 1,selectedBorderColor: const Color.fromARGB(255, 54, 244, 155), enable: true),
              explode: true,
            ),
          ],
        ),
      ),
    );
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('America', 1600,Color(0xff005F58)),
      GDPData('Europa', 2800,Color(0xff004F5F)),
      GDPData('Africa', 500,Color(0xff00375F)),
      GDPData('Oceanía', 1200,Color(0xff001F5F)),
      GDPData('Asia', 2000,Color(0xff00075F)),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp, this.color);
  final String continent;
  final int gdp;
  final Color color;
}
