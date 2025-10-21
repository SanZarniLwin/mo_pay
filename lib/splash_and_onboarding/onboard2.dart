import 'package:flutter/material.dart';
import 'package:mo_pay/splash_and_onboarding/onboard3.dart';

class OnBoard2 extends StatelessWidget {
  const OnBoard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 35, top: 150, right: 35, bottom: 40),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sending Money is now\nEasier',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              'Send payment with just a few taps',
              style: TextStyle(
                color: Color.fromRGBO(96, 96, 96, 1),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 50,),
            Image.asset('assets/images/onboard2.png'),
            SizedBox(height: 50,),
            Center(
              child: SizedBox(
                width: 69,
                height: 4,
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(2),
                  value: 0.66,
                  valueColor: AlwaysStoppedAnimation(Color.fromRGBO(102, 103, 170, 1)),
                  backgroundColor: Color.fromRGBO(242, 242, 242, 1),
                ),
              ),
            ),
            SizedBox(height: 100,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Onboard3(),
                  )
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(102, 103, 170, 1),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}