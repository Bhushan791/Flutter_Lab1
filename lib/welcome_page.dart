import 'package:flutter/material.dart';
import 'package:lab1/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo section
              Container(
                margin: EdgeInsets.only(bottom: 60),

                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFE53E3E),
                            Color(0xFFFF8A00),
                            Color(0xFFFFB800),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),

                      child: Icon(
                        Icons.view_in_ar_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),

                    SizedBox(height: 16),

                    Text(
                      'BILDR',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3748),
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
              ),

              //welcome text
              Text(
                'Welcome TO BILDR',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3748),
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 16),

              Text(
                'Build amazing projects with our powerful tools and creative community.',

                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF718096),
                  height: 1.5,
                ),

                textAlign: TextAlign.center,
              ),

              SizedBox(height: 80),

              Container(
                width: double.infinity,
                height: 56,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  gradient: LinearGradient(
                    colors: [Color(0xFFFF8A00), Color(0xFFE53E3E)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFF8A00).withOpacity(0.3),
                      offset: Offset(0, 10),
                    ),
                  ],
                ),

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            LoginPage(), //loginpage CALL HERE..............................................
                      ),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),

                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40),

              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Center(
                  child: Icon(
                    Icons.rocket_launch,
                    size: 60,
                    color: Color(0xFFFF8A00),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
