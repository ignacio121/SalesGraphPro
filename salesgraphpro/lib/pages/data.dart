import 'package:flutter/material.dart';
import 'package:salesgraphpro/pages/graphs.dart';

class SalesData {
  double americaSales;
  double europeSales;
  double africaSales;
  double oceaniaSales;
  double asiaSales;

  SalesData({
    this.americaSales = 0.0,
    this.europeSales = 0.0,
    this.africaSales = 0.0,
    this.oceaniaSales = 0.0,
    this.asiaSales = 0.0,
  });
}

class DataPage extends StatefulWidget {
  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  final SalesData salesData = SalesData();

  void exportData(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GraphPage(salesData: salesData),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingrese las ventas para cada región (millones)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NumberInputField(
              label: 'Ventas para América',
              onChanged: (value) {
                setState(() {
                  salesData.americaSales = value;
                });
              },
            ),
            NumberInputField(
              label: 'Ventas para Europa',
              onChanged: (value) {
                setState(() {
                  salesData.europeSales = value;
                });
              },
            ),
            NumberInputField(
              label: 'Ventas para África',
              onChanged: (value) {
                setState(() {
                  salesData.africaSales = value;
                });
              },
            ),
            NumberInputField(
              label: 'Ventas para Oceanía',
              onChanged: (value) {
                setState(() {
                  salesData.oceaniaSales = value;
                });
              },
            ),
            NumberInputField(
              label: 'Ventas para Asia',
              onChanged: (value) {
                setState(() {
                  salesData.asiaSales = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                exportData(context);
              },
              child: Text('Exportar Datos'),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffEDEDED),
    );
  }
}

class NumberInputField extends StatelessWidget {
  final String label;
  final ValueChanged<double> onChanged;

  NumberInputField({required this.label, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          if (double.tryParse(value) != null) {
            onChanged(double.parse(value));
          }
        },
      ),
    );
  }
}
