import 'package:flutter/material.dart';
import 'package:mo_pay/fund_in_out/fund_in.dart';
import 'package:mo_pay/fund_in_out/fund_out.dart';

class FundInOut extends StatelessWidget {
  const FundInOut({super.key});

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
                      'Fund In/Fund Out',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Wallet services',
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
                children: [
                  Row(
                    spacing: 15,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const FundIn(),
                              )
                            );
                          },
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
                                  height: 52,
                                  width: 52,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromRGBO(102, 103, 170, 1)
                                  ),
                                  child: Image.asset('assets/images/fundIn.png'),
                                ),
                                Text(
                                  'Fund In',
                                  style: textStyle1(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const FundOut(),
                              )
                            );
                          },
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
                                  height: 52,
                                  width: 52,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromRGBO(102, 103, 170, 1)
                                  ),
                                  child: Image.asset('assets/images/fundIn.png'),
                                ),
                                Text(
                                  'Fund Out',
                                  style: textStyle1(),
                                )
                              ],
                            ),
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