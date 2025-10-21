import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 45),
            height: 249,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pfBg.png'),
                fit: BoxFit.fitWidth
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(), 
                  icon: Image.asset('assets/images/back.png')
                ),
                SizedBox(height: 20,),
                Row(
                  spacing: 30,
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Image.asset('assets/images/logo.png'),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromRGBO(102, 103, 170, 1)
                              ),
                              child: Image.asset('assets/images/c.png'),
                            )
                          )
                        ],
                      )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pizza Co',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          '09757802648',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(242, 242, 242, 1)
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 70, 30, 40),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User Info',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(242, 242, 242, 1)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'User Level',
                                style: textStyle2(),
                              ),
                              Text(
                                'Business',
                                style: textStyle3(),
                              )
                            ],
                          ),
                        ),
                        Divider(height: 1,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Name',
                                style: textStyle2(),
                              ),
                              Text(
                                'Pizza Co',
                                style: textStyle3(),
                              )
                            ],
                          ),
                        ),
                        Divider(height: 1,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Gender',
                                style: textStyle2(),
                              ),
                              Text(
                                'Male',
                                style: textStyle3(),
                              )
                            ],
                          ),
                        ),
                        Divider(height: 1,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Date of birth',
                                style: textStyle2(),
                              ),
                              Text(
                                '01/01/1999',
                                style: textStyle3(),
                              )
                            ],
                          ),
                        ),
                        Divider(height: 1,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'NRC Number',
                                style: textStyle2(),
                              ),
                              Text(
                                '10/MLM(N)260195',
                                style: textStyle3(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle textStyle3() {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(49, 49, 49, 1)
    );
  }

  TextStyle textStyle2() {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(138, 137, 137, 1)
    );
  }

  TextStyle textStyle1() {
    return TextStyle(
      color: Color.fromRGBO(242, 242, 242, 1),
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
  }
}