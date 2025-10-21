import 'package:flutter/material.dart';
import 'package:mo_pay/registration_and_login/login.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({super.key});

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
              'Make payments anywhere\nwith any currency',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              'Shop the world without restrictions',
              style: TextStyle(
                color: Color.fromRGBO(96, 96, 96, 1),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 50,),
            Image.asset('assets/images/welcome.png'),
            SizedBox(height: 50,),
            Center(
              child: SizedBox(
                width: 69,
                height: 4,
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(2),
                  value: 1,
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
                    builder: (context) => const Login(),
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
                  'Get Started',
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