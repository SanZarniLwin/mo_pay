import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mo_pay/registration_and_login/passcode.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

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
        await FirebaseFirestore.instance.collection('login').add({
          'loginPhone': _controller.text.trim(),
          'createdAt': FieldValue.serverTimestamp(),
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed: $e')),
      );
    } finally {
      if (mounted) setState(() => saving = false,);
    }
  }

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
                            'Welcome Back!',
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
                    SizedBox(height: 80,),
                    Row(
                      children: [
                        SizedBox(
                          width: 70,
                          child: TextField(
                            controller: TextEditingController(text: '+959'),
                            decoration: InputDecoration(
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: TextField(
                            controller: _controller,
                            decoration: InputDecoration(
                              hintText: 'Enter mobile number',
                            ),
                          )
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: () async {
                        if (!saving) {
                          await _save();
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const Passcode()),
                          );
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 56,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(102, 103, 170, 1),
                        ),
                        child: Text(
                          saving ? 'Saving...' : 'Log In',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Center(
                      child: Text(
                        'Don\'t have your pay yet.Please Sign Up',
                        style: TextStyle(
                          color: Color.fromRGBO(96, 96, 96, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ),
                    SizedBox(height: 220,),
                    Center(
                      child: Text(
                        'Version 1.1.2',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
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
}