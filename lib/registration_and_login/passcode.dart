import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mo_pay/registration_and_login/registration.dart';

class Passcode extends StatelessWidget {
  const Passcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(30, 70, 30, 30),
              height: 248,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/regiBg.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'English',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Passcode',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            'We happy to see you again',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(30, 60, 30, 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'your pay  ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Mo payment',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 70,),
                    Center(
                      child: Text(
                        'Enter Your Passcode',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         SizedBox(
                          width: 42,
                          child: passcodeField(),
                        ),
                         SizedBox(
                          width: 42,
                          child: passcodeField(),
                        ),
                         SizedBox(
                          width: 42,
                          child: passcodeField(),
                        ),
                         SizedBox(
                          width: 42,
                          child: passcodeField(),
                        ),
                         SizedBox(
                          width: 42,
                          child: passcodeField(),
                        ),
                        SizedBox(
                          width: 42,
                          child: passcodeField(),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Center(
                      child: Text(
                        'Forgot Passcode?',
                        style: TextStyle(
                          color: Color.fromRGBO(96, 96, 96, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ),
                    SizedBox(height: 220,),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Registration(),
                            )
                          );
                        },
                        child: Text(
                          'Version 1.1.2',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextField passcodeField() {
    return TextField(
      controller: TextEditingController(),
      maxLength: 1,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => SizedBox(),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
      ),
    );
  }
}