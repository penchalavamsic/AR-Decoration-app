import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ArchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Keep the overall background black
      appBar: AppBar(
        title: Text('Arch'),
        backgroundColor: Color(0xffffb703), // Black AppBar
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              child: ListView(
                children: [
                  _build3DModelContainer('Green flower-Size:10x5 ft', 'assets/flower_arch.glb'),
                  SizedBox(height: 16),
                  _build3DModelContainer('White petals-Size:12x6 ft', 'assets/white_arch.glb'),
                  SizedBox(height: 16),
                  _build3DModelContainer('Royal rock-Size:10x5 ft', 'assets/rock.glb'),
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
        color: Colors.white, // Containers are white now
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.2), // Subtle shadow for a clean look
            spreadRadius: 1,
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
              backgroundColor: Colors.black, // Keep model viewer background black
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Change text color to black for contrast
              ),
            ),
          ),
        ],
      ),
    );
  }
}