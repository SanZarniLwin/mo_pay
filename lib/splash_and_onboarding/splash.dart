import 'package:flutter/material.dart';
import 'package:mo_pay/splash_and_onboarding/onboard1.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const OnBoard1(),
              )
            );
          },
          child: Container(
            height: 90,
            width: 172,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(102, 103, 170, 1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      'your',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 95,
                  top: 25,
                  child: Text(
                    'pay',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 68,
                  left: 82,
                  child: Text(
                    'Mo payment',
                    style: TextStyle(
                      color: Color.fromRGBO(102, 103, 170, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}