import 'package:flutter/material.dart';
import 'package:mo_pay/home_topup_qr/qr.dart';

class TopUp extends StatelessWidget {
  const TopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 60, 30, 25),
            height: 237,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/topUpBg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(), 
                      icon: Image.asset('assets/images/back.png')
                    ),
                    SizedBox(height: 20,),
                    Text(
                      '1,2000',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: 3,),
                    Row(
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
                        SizedBox(width: 10,),
                        Text(
                          'Balance (Ks)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Top Up', 
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      'Wallet services',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter Your Phone Number',
                    style: textStyle2(),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Image.asset('assets/images/topUpUser.png'),
                      border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 35,),
                  Text(
                    'Amount',
                    style: textStyle2(),
                  ),
                  SizedBox(height: 25,),
                  Row(
                    spacing: 20,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(102, 103, 170, 1)
                          ),
                          child: Text(
                            '1,000 ks',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(242, 242, 242, 1)),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Text(
                            '2,000 ks',
                            style: textStyle1(),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(242, 242, 242, 1)),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                          ),
                          child: Text(
                            '3,000 ks',
                            style: textStyle1(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    spacing: 20,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(242, 242, 242, 1)),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                          ),
                          child: Text(
                            '4,000 ks',
                            style: textStyle1(),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(242, 242, 242, 1)),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Text(
                            '5,000 ks',
                            style: textStyle1(),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(242, 242, 242, 1)),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                          ),
                          child: Text(
                            '10,000 ks',
                            style: textStyle1(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    spacing: 20,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(242, 242, 242, 1)),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                          ),
                          child: Text(
                            '20,000 ks',
                            style: textStyle1(),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(242, 242, 242, 1)),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Text(
                            '30,000 ks',
                            style: textStyle1(),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 56,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 150,),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Qr(),
                        )
                      );
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
                          fontWeight: FontWeight.w400
                        ),
                      ),
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

  TextStyle textStyle2() {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(96, 96, 96, 1)
    );
  }

  TextStyle textStyle1() {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(102, 103, 170, 1)
    );
  }
}