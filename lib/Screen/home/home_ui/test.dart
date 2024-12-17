import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExpandableReadMoreList(),
    );
  }
}

class ExpandableReadMoreList extends StatelessWidget {
  final List<String> items = List.generate(
    5,
    (index) => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
        "Curabitur a ante eu metus pellentesque pharetra. "
        "Suspendisse potenti. Donec volutpat convallis metus, vel vehicula ligula.",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Read More in ListView")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Item ${index + 1}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  ReadMoreText(
                    items[index],
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read More',
                    trimExpandedText: 'Show Less',
                    style: TextStyle(color: Colors.black),
                    moreStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                    lessStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
