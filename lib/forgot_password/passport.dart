import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mo_pay/forgot_password/id_verify.dart';
import 'package:mo_pay/forgot_password/security_question.dart';

class Passport extends StatefulWidget {
  const Passport({super.key});

  @override
  State<Passport> createState() => _PassportState();
}

class _PassportState extends State<Passport> {

  final TextEditingController _controller = TextEditingController();

  bool saving = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    setState(() {
      saving = true;
    });
    try {
      if (_controller.text.trim().isNotEmpty) {
        await FirebaseFirestore.instance.collection('passport').add({
          'passportNumber': _controller.text.trim(),
          'createdAt': FieldValue.serverTimestamp()
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed $e'))
      );
    } finally {
      if (mounted) {setState(() => saving = false,);}
    }
  }

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
                  'ID Verification',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 8,),
                Text(
                  'Please fill NRC information to confirm\nidentity of wallet user',
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
                            value: 0.66,
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                            backgroundColor: Color.fromRGBO(242, 242, 242, 0.5),
                            strokeWidth: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '2',
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
              padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NRC/Passport',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(96, 96, 96, 1),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 14,),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const IdVerify(),
                              )
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color.fromRGBO(194, 194, 194, 1))
                            ),
                            child: Text(
                              'NRC',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(96, 96, 96, 1),
                                  fontSize: 16,
                                ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color.fromRGBO(194, 194, 194, 1))
                          ),
                          child: Text(
                            'Passport',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Passport Number',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(96, 96, 96, 1),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Please Enter Passport Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(height: 200,),
                  GestureDetector(
                    onTap: () async {
                      if (!saving) {
                        await _save();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SecurityQuestion(),
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