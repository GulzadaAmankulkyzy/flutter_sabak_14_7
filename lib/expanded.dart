import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Expanded'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 44, 143, 189),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Color.fromARGB(255, 44, 189, 100),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Color.fromARGB(255, 189, 133, 44),
            ),
          ),
        ],
      ),
    );
  }
}
