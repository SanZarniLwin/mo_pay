import 'package:flutter/material.dart';
import 'package:mo_pay/home_topup_qr/home1.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  
  String activeField = "new";
  final TextEditingController controllerNPw = TextEditingController();
  final TextEditingController controllerCPw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 10),
            height: 249,
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
                  'Create New Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 8,),
                Text(
                  'It will used for payment and send money',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color.fromRGBO(102, 103, 170, 0.3)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(102, 103, 170, 1),
                          ),
                          child: Image.asset('assets/images/ex.png'),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'New password must be different from\nprevious password',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(102, 103, 170, 1)
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'New password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(96, 96, 96, 1)
                    ),
                  ),
                  TextField(
                    controller: controllerNPw,
                    readOnly: true,
                    onTap: () {
                      setState(() {
                        activeField = 'new';
                      });
                    },
                    decoration: InputDecoration(
                      border: UnderlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Confirmed password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(96, 96, 96, 1)
                    ),
                  ),
                  TextField(
                    controller: controllerCPw,
                    readOnly: true,
                    onTap: () {
                      setState(() {
                        activeField = 'confirm';
                      });
                    },
                    decoration: InputDecoration(
                      border: UnderlineInputBorder()
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
            color: Color.fromRGBO(242, 242, 242, 1),
            alignment: Alignment.bottomRight,
            child: Column(
              spacing: 10,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onNumberPressed('1'),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Text(
                            '1', 
                            style: numStyle(),
                          )
                        ),
                      )
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onNumberPressed('2'),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Text(
                            '2', 
                            style: numStyle(),
                          )
                        ),
                      )
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onNumberPressed('3'),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Text(
                            '3', 
                            style: numStyle(),
                          )
                        ),
                      )
                    ),                          ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onNumberPressed('4'),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Text(
                            '4', 
                            style: numStyle(),
                          )
                        ),
                      )
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onNumberPressed('5'),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Text(
                            '5', 
                            style: numStyle(),
                          )
                        ),
                      )
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onNumberPressed('6'),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Text(
                            '6', 
                            style: numStyle(),
                          )
                        ),
                      )
                    ),                          ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onNumberPressed('7'),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Text(
                            '7', 
                            style: numStyle(),
                          )
                        ),
                      )
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onNumberPressed('8'),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Text(
                            '8', 
                            style: numStyle(),
                          )
                        ),
                      )
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onNumberPressed('9'),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Text(
                            '9', 
                            style: numStyle(),
                          )
                        ),
                      )
                    ),                          ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => _passwordUpdate(),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Text(
                            'Confirm',
                          )
                        ),
                      )
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onNumberPressed('0'),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Text(
                            '0', 
                            style: numStyle(),
                          )
                        ),
                      )
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => deleteNumber(),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.backspace)
                        ),
                      )
                    ),                          
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle numStyle() {
    return TextStyle(
      fontSize: 22, 
      fontWeight: FontWeight.w700,
      color: Color.fromRGBO(67, 84, 92, 1)
    );
  }

  void onNumberPressed(String number) {
    setState(() {
      if (activeField == 'new') {
        controllerNPw.text += number;
      } else {
        controllerCPw.text += number;
      }
    });
  }

  void deleteNumber() {
    setState(() {
      if (activeField == 'new' && controllerNPw.text.isNotEmpty) {
        controllerNPw.text = 
            controllerNPw.text.substring(0, controllerNPw.text.length - 1);
      } else if (activeField == 'confirm' && controllerCPw.text.isNotEmpty) {
        controllerCPw.text = 
            controllerCPw.text.substring(0, controllerCPw.text.length - 1);
      }
    });
  }

  void _passwordUpdate() {
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        content: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(15, 30, 15, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromRGBO(102, 103, 170, 1)
                ),
                child: Image.asset('assets/images/cong.png'),
              ),
              SizedBox(height: 30,),
              Text(
                'Password Update',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
                ),
              ),
              SizedBox(height: 15,),
              Text(
                'You\'ve updated password',
                style: TextStyle(
                  color: Color.fromRGBO(96, 96, 96, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 16
                ),
              ),
              Text(
                'successfully',
                style: TextStyle(
                  color: Color.fromRGBO(96, 96, 96, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 16
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Home1(),
                    )
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(102, 103, 170, 1)
                  ),
                  child: Text(
                    'Ok',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}