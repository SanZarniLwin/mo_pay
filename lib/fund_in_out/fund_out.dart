import 'package:flutter/material.dart';

class FundOut extends StatelessWidget {
  const FundOut({super.key});

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
                      'Fund Out',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Choose any types of Fund out services',
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
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                    alignment: Alignment.topLeft,
                    height: 148,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(242, 242, 242, 1)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(102, 103, 170, 1),
                          ),
                          child: Image.asset('assets/images/otherB.png'),
                        ),
                        Text(
                          'Bank Account',
                          style: textStyle1(),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                    alignment: Alignment.topLeft,
                    height: 148,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(242, 242, 242, 1)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(102, 103, 170, 1),
                          ),
                          child: Image.asset('assets/images/reqM.png'),
                        ),
                        Text(
                          'Agent/Master agent',
                          style: textStyle1(),
                        )
                      ],
                    ),
                  ),
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
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.black
    );
  }
}