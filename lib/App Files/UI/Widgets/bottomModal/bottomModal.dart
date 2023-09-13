import 'package:flutter/material.dart';

class AutoScrollPage extends StatefulWidget {
  @override
  _AutoScrollPageState createState() => _AutoScrollPageState();
}

class _AutoScrollPageState extends State<AutoScrollPage> {
  final ScrollController _scrollController = ScrollController();
  double dragDistance = 0;
  double maxDragDistance = 100; // Adjust this value as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auto Scroll Example'),
      ),
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          setState(() {
            dragDistance += details.primaryDelta!;
          });

          if (dragDistance.abs() >= maxDragDistance) {
            double targetOffset = 400; // Adjust this value as needed
            _scrollController.animateTo(
              targetOffset,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          }
        },
        child: ListView.builder(
          controller: _scrollController,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              color: index % 2 == 0 ? Colors.red : Colors.blue,
              alignment: Alignment.center,
              child: Text('Item $index'),
            );
          },
        ),
      ),
    );
  }
}
