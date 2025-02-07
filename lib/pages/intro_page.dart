import 'package:flutter/material.dart';
import 'package:mini_ecommerce_appln/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Center(
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.blue.shade900,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(
                    'assets/img/LogoUA.png',
                    width: 220.0,
                  ),
                ),
              ),
              SizedBox(height: 15.0),

              // Text
              Text('SNEAKERS AND KICKS',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontFamily: 'MyBebasNeue',
                  )),
              const SizedBox(height: 50.0),

              // Subtext
              Text(
                  'Brand new sneackers and custom kicks made with premium quality',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center),

              const SizedBox(height: 100.0),

              // Button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          'SHOP NOW',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
