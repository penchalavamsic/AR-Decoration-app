import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ProductThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFB703),
        title: Text('Bokeh'), // Ensure correct naming
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop();
          return false;
        },
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                width: double.infinity,
                child: ModelViewer(
                  backgroundColor: Colors.black,
                  src: 'assets/white_arch.glb', // Ensure file exists in assets
                  alt: "Grandier Rose Petals Arch",
                  ar: true,
                  autoRotate: true,
                  cameraControls: true,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'White rose petals arch',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Grace in Every Petal, Elegance in Every Arch.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Features:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('• Ergonomic design for optimal comfort'),
                      Text('• High-quality upholstery'),
                      //Text('• Sturdy frame for durability'),
                      Text('• Available in multiple colors'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
