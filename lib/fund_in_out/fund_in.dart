import 'package:flutter/material.dart';

class FundIn extends StatelessWidget {
  const FundIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 40),
            height: 247,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fundBg.png'),
                fit: BoxFit.fitWidth
              )
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(), 
                      icon: Image.asset('assets/images/back.png')
                    ),
                    SizedBox(height: 45,),
                    Text(
                      'Fund In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Choose any types of Fund In services',
                      style: TextStyle(
                        color: Color.fromRGBO(242, 242, 242, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 3,),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
              color: Colors.white,
              child: Column(
                spacing: 15,
                children: [
                  Row(
                    spacing: 15,
                    children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(242, 242, 242, 1)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(102, 103, 170, 1)
                                ),
                                child: Image.asset('assets/images/interBank.png'),
                              ),
                              Text(
                                'Bank Account',
                                style: textStyle1(),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 150,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(242, 242, 242, 1)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(102, 103, 170, 1)
                                ),
                                child: Image.asset('assets/images/mpu.png'),
                              ),
                              Text(
                                'MPU',
                                style: textStyle1(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 15,
                    children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(242, 242, 242, 1)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(102, 103, 170, 1)
                                ),
                                child: Image.asset('assets/images/mpgs.png'),
                              ),
                              Text(
                                'By MPGS',
                                style: textStyle1(),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 150,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(242, 242, 242, 1)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(102, 103, 170, 1)
                                ),
                                child: Image.asset('assets/images/otherB.png'),
                              ),
                              Text(
                                'Other Bank\nAccount',
                                style: textStyle1(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 15,
                    children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(242, 242, 242, 1)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(102, 103, 170, 1)
                                ),
                                child: Image.asset('assets/images/reqM.png'),
                              ),
                              Text(
                                'Request/\nMaster agent',
                                style: textStyle1(),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 150,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(242, 242, 242, 1)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(102, 103, 170, 1)
                                ),
                                child: Image.asset('assets/images/reqFu.png'),
                              ),
                              Text(
                                'Request Fund In',
                                style: textStyle1(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle textStyle1() {
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
  }
}