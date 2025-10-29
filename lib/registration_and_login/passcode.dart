import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mo_pay/forgot_password/otp_verify.dart';
import 'package:mo_pay/home_topup_qr/home1.dart';
import 'package:mo_pay/registration_and_login/registration.dart';
import 'package:provider/provider.dart';

class Data extends ChangeNotifier{

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();
  final TextEditingController controller5 = TextEditingController();
  final TextEditingController controller6 = TextEditingController();

  bool saving = false;

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    controller6.dispose();
    super.dispose();
  }

  String get passcodeValue => 
  '${controller1.text.trim()}${controller2.text.trim()}${controller3.text.trim()}${controller4.text.trim()}${controller5.text.trim()}${controller6.text.trim()}';

  Future<bool> existingPasscode(String phoneNumber) async {
    final doc = await FirebaseFirestore.instance.collection('passcode')
          .doc(phoneNumber)
          .get();
    return doc.exists;
  }

  Future<void> savePasscode(String phoneNumber) async {
    await FirebaseFirestore.instance.collection('passcode').doc(phoneNumber).set({
      'Passcode': passcodeValue,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }

  Future<bool> verifyPasscode(String phoneNumber) async {
    final doc = await FirebaseFirestore.instance.collection('passcode')
          .doc(phoneNumber)
          .get();
    if (!doc.exists) return false;
    return doc['Passcode'] == passcodeValue;
  }

}

class Passcode extends StatefulWidget {
  final phoneNumber;
  const Passcode({super.key, required this.phoneNumber});

  @override
  State<Passcode> createState() => _PasscodeState();
}

class _PasscodeState extends State<Passcode> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Data(),
      builder: (context, _) {
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
                        Consumer<Data>(
                          builder: (context, value, child) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 SizedBox(
                                  width: 42,
                                  child: passcodeField(controller: value.controller1),
                                ),
                                 SizedBox(
                                  width: 42,
                                  child: passcodeField(controller: value.controller2),
                                ),
                                 SizedBox(
                                  width: 42,
                                  child: passcodeField(controller: value.controller3),
                                ),
                                 SizedBox(
                                  width: 42,
                                  child: passcodeField(controller: value.controller4),
                                ),
                                 SizedBox(
                                  width: 42,
                                  child: passcodeField(controller: value.controller5),
                                ),
                                SizedBox(
                                  width: 42,
                                  child: passcodeField(controller: value.controller6),
                                ),
                              ],
                            );
                          }
                        ),
                        SizedBox(height: 30,),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => OtpVerify(phoneNumber: widget.phoneNumber,),
                                )
                              );
                            }, 
                            child: Text(
                              'Forgot Passcode?',
                              style: TextStyle(
                                color: Color.fromRGBO(96, 96, 96, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ),
                        ),
                        SizedBox(height: 209,),
                        Center(
                          child: Consumer<Data>(
                            builder: (context, value, child) {
                              return TextButton(
                                onPressed: () async {
                                  String code = value.passcodeValue;
                                  if (code.length != 6) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('Passwords need to be 6 digits.'))
                                    );
                                    return;
                                  } 
                                  bool exists = await value.existingPasscode(widget.phoneNumber);
                                  if (!exists) {
                                    await value.savePasscode(widget.phoneNumber);
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const Registration(),
                                      )
                                    );
                                  } else {
                                    bool correct = await value.verifyPasscode(widget.phoneNumber);
                                    if (correct) {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const Home1(),
                                        )
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Your passcode is wrong'))
                                      );
                                    }
                                  }
                                },
                                child: Text(
                                  'Version 1.1.2',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            }
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
    );
  }

  TextField passcodeField({required TextEditingController controller}) {
    return TextField(
      controller: controller,
      maxLength: 1,
      onChanged: (value) {
        if (value.isNotEmpty) FocusScope.of(context).nextFocus();
      },
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => SizedBox(),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
      ),
    );
  }
}