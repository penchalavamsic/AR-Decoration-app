// product_one.dart
import 'package:flutter/material.dart';

class ProductOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product One'),
      ),
      body: Center(
        child: Text(
          'This is Product One Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
