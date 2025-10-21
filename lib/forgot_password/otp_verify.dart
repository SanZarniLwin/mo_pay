import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mo_pay/forgot_password/id_verify.dart';

class OtpVerify extends StatelessWidget {
  const OtpVerify({super.key});

  @override
  Widget build(BuildContext context) {
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 56,
                          width: 46,
                          child: OtpField()
                        ),
                        SizedBox(
                          height: 56,
                          width: 46,
                          child: OtpField()
                        ),
                        SizedBox(
                          height: 56,
                          width: 46,
                          child: OtpField()
                        ),
                        SizedBox(
                          height: 56,
                          width: 46,
                          child: OtpField(),
                        ),
                      ],
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const IdVerify(),
                        )
                      );
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OtpField extends StatelessWidget {
  const OtpField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 1,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => SizedBox(),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8)
        )
      ),
    );
  }
}