import 'package:flutter/material.dart';
import 'product_one.dart'; // Import the new page

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top colored section
            Container(
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Categories section with rounded corners
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Buttons section
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCircularButton(Icons.add, () { print('Button 1 pressed!'); }),
                  _buildCircularButton(Icons.search, () { print('Button 2 pressed!'); }),
                  _buildCircularButton(Icons.settings, () { print('Button 3 pressed!'); }),
                ],
              ),
            ),
            // Five larger containers with rounded corners
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductOne()),
                );
              },
              child: _buildRoundedContainer('Container 1', Colors.red),
            ),
            SizedBox(height: 20),
            _buildRoundedContainer('Container 2', Colors.green),
            SizedBox(height: 20),
            _buildRoundedContainer('Container 3', Colors.orange),
            SizedBox(height: 20),
            _buildRoundedContainer('Container 4', Colors.purple),
            SizedBox(height: 20),
            _buildRoundedContainer('Container 5', Colors.teal),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCircularButton(IconData icon, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.white,
        child: IconButton(
          icon: Icon(icon, color: Colors.blue, size: 30),
          onPressed: onPressed,
        ),
      ),
    );
  }

  Widget _buildRoundedContainer(String text, Color color) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
