import 'package:flutter/material.dart';
import 'arch.dart';
import 'logout.dart';
import 'flowers.dart';
import 'chairs.dart';
import 'package:ardecorapp/features/user_auth/presentation/pages/product_one.dart';
import 'package:ardecorapp/features/user_auth/presentation/pages/product_two.dart';
import 'package:ardecorapp/features/user_auth/presentation/pages/product_three.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set entire background to black
      body: Column(
        children: [
          // 🔹 Header Section
          Container(
            height: 100,
            color: Color(0xFF00008B),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LogoutPage()),
                            (Route<dynamic> route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFB703),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Logout',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 🔹 Main Content Section (Scrollable)
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildSectionTitle('Categories'),

                  // 🔹 Categories Buttons
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildCircularButton('Archs', () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ArchPage()));
                        }),
                        _buildCircularButton('Flowers', () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FlowerPage()));
                        }),
                        _buildCircularButton('Chairs', () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChairsPage()));
                        }),
                      ],
                    ),
                  ),

                  _buildSectionTitle('Customer Choice', color: Color(0xFF00008B), textColor: Colors.white),

                  _buildDetailedRoundedContainer(
                    'Sillion Chair',
                    Color(0xFFFFB703),
                    'Size: 3.5ft x 2.5ft\nFeatures:\n- Elegant design\n- Comfortable seating',
                        () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductOne())),
                  ),

                  SizedBox(height: 20),

                  _buildDetailedRoundedContainer(
                    'Bokeh',
                    Colors.white,
                    'Size: 4ft x 3ft\nFeatures:\n- Premium light effects\n- Perfect for photography',
                        () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductTwo())),
                  ),

                  SizedBox(height: 20),

                  _buildDetailedRoundedContainer(
                    'White Rose Petals',
                    Color(0xFFFFB703),
                    'Size: Variable\nFeatures:\n- Fresh and scented\n- Ideal for decorations',
                        () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductThree())),
                  ),

                  SizedBox(height: 20),

                  _buildDetailedRoundedContainer(
                    'Royal Mehendi Chair',
                    Colors.white,
                    'Size: 3ft x 3ft\nFeatures:\n- Traditional royal look\n- Comfortable cushion',
                        () {},
                  ),

                  SizedBox(height: 20),

                  _buildDetailedRoundedContainer(
                    'Banana Banner',
                    Color(0xFFFFB703),
                    'Size: 5ft x 2ft\nFeatures:\n- Eco-friendly\n- Traditional design',
                        () {},
                  ),

                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Section Title Widget
  Widget _buildSectionTitle(String text, {Color color = Colors.white, Color textColor = Colors.black}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // 🔹 Circular Button Widget (Without Shadows)
  Widget _buildCircularButton(String text, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [Color(0xFF1E3C72), Color(0xFF2A5298)], // Gradient blue
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.transparent, // Keeps the gradient visible
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 14),
            textAlign: TextAlign.center,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }

  // 🔹 Detailed Rounded Container Widget (Without Shadows)
  Widget _buildDetailedRoundedContainer(String title, Color color, String description, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align text to left
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}