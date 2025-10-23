import 'package:flutter/material.dart';
import 'package:mo_pay/fund_in_out/fund_in_out.dart';
import 'package:mo_pay/home_topup_qr/home1.dart';
import 'package:mo_pay/home_topup_qr/nearby.dart';
import 'package:mo_pay/home_topup_qr/top_up.dart';
import 'package:mo_pay/home_topup_qr/user.dart';
import 'package:mo_pay/transcation_history/transcation_history.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(30, 80, 30, 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Welcome Pizza Co. Ltd',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(6, 6, 6, 1)
                      ),
                    ),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(102, 103, 170, 0.1)
                      ),
                      child: Image.asset('assets/images/noti.png'),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/US.png'),
                    SizedBox(width: 8,),
                    Text(
                      '1 USD : 2,100 MMK',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(96, 96, 96, 1),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Image.asset('assets/images/MM.png'),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 25, 25, 55),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(242, 242, 242, 0.8)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '12,000.00',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(102, 103, 170, 1),
                                ),
                                child: Image.asset('assets/images/wallet1.png'),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'My balance (Ks)',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(96, 96, 96, 1),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromRGBO(217, 217, 217, 0.7)
                        ),
                        child: Image.asset('assets/images/qr2.png'),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(102, 103, 170, 1),
                          ),
                          child: Image.asset('assets/images/transfer1.png'),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          'Transfer',
                          style: textStyle1(),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(102, 103, 170, 1),
                          ),
                          child: Image.asset('assets/images/interBank.png'),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          'Interbank\nTransfer',
                          style: textStyle1(),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const FundInOut(),
                          )
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color.fromRGBO(102, 103, 170, 1),
                            ),
                            child: Image.asset('assets/images/fund1.png'),
                          ),
                          SizedBox(height: 15,),
                          Text(
                            'Fund In/\nOut',
                            style: textStyle1(),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: _showBottomSheet,
                      child: Column(
                        children: [
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color.fromRGBO(102, 103, 170, 1),
                            ),
                            child: Image.asset('assets/images/more.png'),
                          ),
                          SizedBox(height: 15,),
                          Text(
                            'More',
                            style: textStyle1(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Transcation',
                      style: textStyle2(),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const TopUp(),
                          )
                        );
                      },
                      child: Text(
                        'See more',
                        style: TextStyle(
                          color: Color.fromRGBO(102, 103, 170, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35,),
                Image.asset('assets/images/transcation.png', height: 120, width: 135,),
                SizedBox(height: 30,),
                Text(
                  'No Recent Transcation Yet',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(159, 159, 159, 1)
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.25)),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Home1(),
                        )
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/home.png', color: Color.fromRGBO(96, 96, 96, 1)),
                        SizedBox(height: 10,),
                        Text(
                          'Home',
                          style: textStyle3()
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const TranscationHistory(),
                        )
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/history.png', color: Color.fromRGBO(102, 103, 170, 1),),
                        SizedBox(height: 10,),
                        Text(
                          'History',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(102, 103, 170, 1)
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Nearby(),
                        )
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/near.png', color: Color.fromRGBO(96, 96, 96, 1),),
                        SizedBox(height: 10,),
                        Text(
                          'Near By',
                          style: textStyle3(),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const User(),
                        )
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/user.png', color: Color.fromRGBO(96, 96, 96, 1),),
                        SizedBox(height: 10,),
                        Text(
                          'User',
                          style: textStyle3(),
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
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(96, 96, 96, 1)
    );
  }

  TextStyle textStyle2() {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(6, 6, 6, 1)
    );
  }

  TextStyle textStyle1() {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(96, 96, 96, 1)
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context, 
      builder: (context) {
        return Container(
          padding: EdgeInsets.fromLTRB(30, 60, 30, 50),
          height: 374,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
            ),
            color: Colors.white,
          ),
          child: Column(
            spacing: 20,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color.fromRGBO(102, 103, 170, 0.08)
                      ),
                      child: Text('Wallet Services',style: textStyle4(),),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    spacing: 15,
                    children: [
                      Image.asset('assets/images/fundInOutWS.png'),
                      Text('Fund In/\nOut',style: textStyle5(),textAlign: TextAlign.center,)
                    ],
                  ),
                  Column(
                    spacing: 15,
                    children: [
                      Image.asset('assets/images/qrWS.png'),
                      Text('Receive',style: textStyle5(),)
                    ],
                  ),
                  Column(
                    spacing: 15,
                    children: [
                      Image.asset('assets/images/topUpWS.png'),
                      Text('Top Up',style: textStyle5(),)
                    ],
                  ),
                  Column(
                    spacing: 15,
                    children: [
                      Image.asset('assets/images/nearWS.png'),
                      Text('Near By',style: textStyle5(),)
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color.fromRGBO(102, 103, 170, 0.08)
                      ),
                      child: Text('Payment Services',style: textStyle4(),),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    spacing: 15,
                    children: [
                      Image.asset('assets/images/transferPS.png'),
                      Text('Transfer',style: textStyle5(),)
                    ],
                  ),
                  Column(
                    spacing: 15,
                    children: [
                      Image.asset('assets/images/interBankPS.png'),
                      Text('Interbank\nTransfer',style: textStyle5(),textAlign: TextAlign.center,)
                    ],
                  ),
                  Column(
                    spacing: 15,
                    children: [
                      Image.asset('assets/images/payBillPS.png'),
                      Text('Pay\nBillpayments',style: textStyle5(),textAlign: TextAlign.center,)
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  TextStyle textStyle5() {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(49, 49, 49, 1)
    );
  }

  TextStyle textStyle4() {
    return TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(49, 49, 49, 1)
    );
  }
}