import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mo_pay/forgot_password/id_verify.dart';
import 'package:provider/provider.dart';

class data extends ChangeNotifier{
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();

  bool saving = false;

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    super.dispose();
  }

  Future<void> save() async {
    try {
      if (
        controller1.text.trim().isNotEmpty&&
        controller2.text.trim().isNotEmpty&&
        controller3.text.trim().isNotEmpty&&
        controller4.text.trim().isNotEmpty
      ) {
        await FirebaseFirestore.instance.collection('otp').add({
          'OTP': ('${controller1.text.trim()}${controller2.text.trim()}${controller3.text.trim()}${controller4.text.trim()}'),
          'createdAt': FieldValue.serverTimestamp(),
        });
      }
    } catch (e) {
      SnackBar(content: Text('Failed $e'),);
    }
  }

}

class OtpVerify extends StatefulWidget {
  final phoneNumber;
  const OtpVerify({super.key, required this.phoneNumber});

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: data(),
      builder: (context, _) {
        return Scaffold(
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 50, 30, 10),
                height: 315,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/otpBg.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.of(context).pop(), 
                          icon: Image.asset('assets/images/back.png'),
                        )
                      ],
                    ),
                    SizedBox(height: 40,),
                    Text(
                      'OTP Verification',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'We have sent you a SMS on your phone\nnumber',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CircularProgressIndicator(
                                value: 0.33,
                                valueColor: AlwaysStoppedAnimation(Colors.white),
                                backgroundColor: Color.fromRGBO(242, 242, 242, 0.5),
                                strokeWidth: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text(
                                    '/3',
                                    style: TextStyle(
                                      color: Color.fromRGBO(159, 159, 159, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.fromLTRB(30, 70, 30, 40),
                  child: Column(
                    children: [
                      Text(
                        '09*****648',
                        style: TextStyle(
                          color: Color.fromRGBO(96, 96, 96, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 50,),
                      SizedBox(
                        width: 256,
                        child: Consumer<data>(
                          builder: (context, value, child) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 56,
                                  width: 46,
                                  child: OtpField(controller: value.controller1,)
                                ),
                                SizedBox(
                                  height: 56,
                                  width: 46,
                                  child: OtpField(controller: value.controller2)
                                ),
                                SizedBox(
                                  height: 56,
                                  width: 46,
                                  child: OtpField(controller: value.controller3)
                                ),
                                SizedBox(
                                  height: 56,
                                  width: 46,
                                  child: OtpField(controller: value.controller4),
                                ),
                              ],
                            );
                          }
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        'If you don\'t receive a code!',
                        style: TextStyle(
                          color: Color.fromRGBO(96, 96, 96, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        'Resend OTP (59s)',
                        style: TextStyle(
                          color: Color.fromRGBO(102, 103, 170, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 150,),
                      Consumer<data>(
                        builder: (context, value, child) {
                          return GestureDetector(
                            onTap: () async {
                              if (!value.saving) {
                                await value.save();
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => IdVerify(phoneNumber: widget.phoneNumber,),
                                  )
                                );
                              }
                            },
                            child: Container(
                              height: 56,
                              width: double.infinity,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(102, 103, 170, 1),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                            ),
                          );
                        }
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}

class OtpField extends StatelessWidget {
 final TextEditingController controller; 
  const OtpField({
    required  this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLength: 1,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      textInputAction: TextInputAction.next,
      onChanged: (value) {
        if (value.isNotEmpty) FocusScope.of(context).nextFocus();
      },
      buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => SizedBox(),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8)
        )
      ),
    );
  }
}