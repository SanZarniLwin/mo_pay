import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mo_pay/forgot_password/otp_verify.dart';
import 'package:mo_pay/registration_and_login/registration.dart';
import 'package:provider/provider.dart';

class data extends ChangeNotifier{

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

  Future<void> save() async {
    try {
      if (
        controller1.text.trim().isNotEmpty&&
        controller2.text.trim().isNotEmpty&&
        controller3.text.trim().isNotEmpty&&
        controller4.text.trim().isNotEmpty&&
        controller5.text.trim().isNotEmpty&&
        controller6.text.trim().isNotEmpty
      ) {
        await FirebaseFirestore.instance.collection('passcode').add({
          'Passcode': ('${controller1.text.trim()}${controller2.text.trim()}${controller3.text.trim()}${controller4.text.trim()}${controller5.text.trim()}${controller6.text.trim()}'),
          'createdAt': FieldValue.serverTimestamp()
        });
      }
    } catch (e) {
      SnackBar(content: Text('Failed $e'));
    }
  }

}

class Passcode extends StatefulWidget {
  const Passcode({super.key});

  @override
  State<Passcode> createState() => _PasscodeState();
}

class _PasscodeState extends State<Passcode> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: data(),
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
                        Consumer<data>(
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
                                  builder: (context) => const OtpVerify(),
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
                          child: Consumer<data>(
                            builder: (context, value, child) {
                              return TextButton(
                                onPressed: () async {
                                  if (!value.saving) {
                                    await value.save();
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const Registration(),
                                      )
                                    );
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