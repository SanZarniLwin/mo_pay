import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 40),
            height: 249,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pfBg.png'),
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
                      'Setting',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Here are something you can do',
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
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
              child: Column(
                children: [
                  Row(
                    spacing: 15,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          height: 150,
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
                                child: Image.asset('assets/images/cP.png'),
                              ),
                              Text(
                                'Change Password',
                                style: textStyle1(),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        width: 136,
                        height: 150,
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
                              child: Image.asset('assets/images/fP.png'),
                            ),
                            Text(
                              'Fingerprint',
                              style: textStyle1(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    spacing: 15,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        width: 136,
                        height: 150,
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
                              child: Image.asset('assets/images/dM.png'),
                            ),
                            Text(
                              'Device\nManagement',
                              style: textStyle1(),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          height: 150,
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
                                child: Image.asset('assets/images/cL.png'),
                              ),
                              Text(
                                'Change Language',
                                style: textStyle1(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 60,),
                  Container(
                    height: 56,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color.fromRGBO(102, 103, 170, 1)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Log out',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(102, 103, 170, 1)
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  TextStyle textStyle1() {
    return TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Colors.black
    );
  }
}