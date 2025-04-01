import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ChairsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xffffb703),
        title: Text('Chairs'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              child: ListView(
                children: [
                  _build3DModelContainer('Royal Chair-Size: 3x2ft', 'assets/sillon.glb'),
                  SizedBox(height: 16),
                  _buildGreyContainer('Available soon'),
                  SizedBox(height: 16),
                  _buildGreyContainer('Available soon'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _build3DModelContainer(String title, String modelPath) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white, // 3D Model container remains white
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: ModelViewer(
              src: modelPath,
              alt: "A 3D model of $title",
              ar: true,
              autoRotate: true,
              cameraControls: true,
              backgroundColor: Colors.black, // Model Viewer background is black
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Text color remains black
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGreyContainer(String title) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[800], // Empty containers are dark grey
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Text color is white for better visibility
          ),
        ),
      ),
    );
  }
}