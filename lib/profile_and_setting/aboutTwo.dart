import 'package:flutter/material.dart';

class Abouttwo extends StatelessWidget {
  const Abouttwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 249,
            padding: EdgeInsets.fromLTRB(30, 60, 30, 40),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pfBg.png'),
                fit: BoxFit.fitWidth,
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
                      onPressed: Navigator.of(context).pop, 
                      icon: Image.asset('assets/images/back.png')
                    ),
                    SizedBox(height: 33,),
                    Row(
                      spacing: 10,
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white
                          ),
                          child: Image.asset('assets/images/wallet2.png'),
                        ),
                        Text(
                          'Available amount (ks)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(242, 242, 242, 1)
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '12,000.00', style: textStyle1(),
                    )
                  ],
                ),
                Text('My Wallet', style: textStyle1(),)
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(30, 50, 40, 30),
              child: Column(
                children: [
                  Text(
                    'My Bank Account',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    alignment: Alignment.center,
                    height: 310,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(242, 242, 242, 0.5)
                    ),
                    child: Text(
                      'There\'s no Bank account yet',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(138, 137, 137, 1)
                      ),
                    ),
                  ),
                  SizedBox(height: 150,),
                  Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(102, 103, 170, 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image.asset('assets/images/plus.png'),
                        ),
                        SizedBox(width: 15,),
                        Text(
                          'Link Bank Account',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }

  TextStyle textStyle1() {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: Colors.white
    );
  }
}