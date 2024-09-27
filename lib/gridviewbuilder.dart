import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridViewBuilder()));
}

class GridViewBuilder extends StatefulWidget {
  const GridViewBuilder({super.key});
  @override
  State<GridViewBuilder> createState() => _GridViewBuilderState();
}

class _GridViewBuilderState extends State<GridViewBuilder> {
  var color = [Colors.orange, Colors.red, Colors.yellow, Colors.brown];
  var icon = [
    Icons.account_balance,
    Icons.abc_outlined,
    Icons.ac_unit_outlined,
    Icons.access_alarm
  ];
  var data = [
    "account_balance",
    "abc_outlined",
    "ac_unit_outlined",
    "access_alarm"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate:

            //extend
            // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //   maxCrossAxisExtent: 200, crossAxisSpacing: 15, mainAxisSpacing: 5),

            SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
            color: color[index],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon[index]),
                Text(data[index]),
              ],
            ),
          );
        },
        itemCount: color.length,
      ),
    );
  }
}
