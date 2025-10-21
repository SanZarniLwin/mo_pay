import 'package:flutter/material.dart';

class Aboutinfo extends StatelessWidget {
  const Aboutinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 60, 30, 40),
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
                    SizedBox(height: 40,),
                    Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Get in touch with us',
                      style: textStyle1(),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'your pay ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      )
                    ),
                    Text('Mo payment',style: textStyle1(),)
                  ],
                ),
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
                    'Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
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
                                'Phone No',
                                style: textStyle2(),
                              ),
                              Text(
                                '+959 776 000 700',
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
                                'Email',
                                style: textStyle2(),
                              ),
                              Text(
                                'care@mo.com.mm',
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
                        Divider(height: 1,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Address',
                                style: textStyle2(),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'No,6,Independent',
                                    style: textStyle3(),
                                  ),
                                  Text(
                                    'St,Thingangyun,Yangon',
                                    style: textStyle3(),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 210,),
                  Center(
                    child: Text(
                      'Version 1.1.2',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
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