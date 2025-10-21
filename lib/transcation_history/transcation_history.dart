import 'package:flutter/material.dart';
import 'package:mo_pay/transcation_history/detail.dart';

class TranscationHistory extends StatelessWidget {
  const TranscationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
            height: 232,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/historyBg.png'),
                fit: BoxFit.fitWidth,
              )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(), 
                      icon: Image.asset('assets/images/back.png')
                    ),
                    Text(
                      'History',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(width: 80,),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Detail(),
                          )
                        );
                      }, 
                      icon: Image.asset('assets/images/search.png')
                    )
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  spacing: 15,
                  children: [
                    SizedBox(width: 1,),
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(242, 242, 242, 1)
                      ),
                      child: Image.asset('assets/images/filter.png'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(102, 103, 170, 1)
                      ),
                      padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                      child: Text(
                        'All',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                        ),
                      )
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(242, 242, 242, 1)
                      ),
                      padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                      child: Text('Income', style: textStyle1(),)
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(242, 242, 242, 1)
                      ),
                      padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                      child: Text('Expense', style: textStyle1(),)
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(40),
              color: Colors.white,
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(21),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                          color: Color.fromRGBO(102, 103, 170, 0.8)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text('November - 2023', style: textStyle2(),),
                          Text('Income/Expense', style: textStyle2())
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(8, 15, 8, 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          ),
                          color: Color.fromRGBO(242, 242, 242, 0.3)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color.fromRGBO(242, 242, 242, 1)
                                    ),
                                    child: Image.asset('assets/images/down.png'),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Transfer from ******35',style: textStyle3(),),
                                      Text('3 November 2023',style: textStyle4(),)
                                    ],
                                  ),
                                  Text('+2,000',style: textStyle5(),)
                                ],
                              ),
                            ),
                            Divider(height: 1,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color.fromRGBO(242, 242, 242, 1)
                                    ),
                                    child: Image.asset('assets/images/up.png'),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Transfer To ******45',style: textStyle3(),),
                                      Text('3 November 2023',style: textStyle4(),)
                                    ],
                                  ),
                                  Text('-2,000',style: textStyle5(),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 25,),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(21),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                          color: Color.fromRGBO(102, 103, 170, 0.8)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text('October - 2023', style: textStyle2(),),
                          Text('Income/Expense', style: textStyle2())
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(8, 15, 8, 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          ),
                          color: Color.fromRGBO(242, 242, 242, 0.3)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color.fromRGBO(242, 242, 242, 1)
                                    ),
                                    child: Image.asset('assets/images/pocketM.png'),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Pocket Money',style: textStyle3(),),
                                      Text('3 October 2023',style: textStyle4(),)
                                    ],
                                  ),
                                  Text('+2,000',style: textStyle5(),)
                                ],
                              ),
                            ),
                            Divider(height: 1,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color.fromRGBO(242, 242, 242, 1)
                                    ),
                                    child: Image.asset('assets/images/pocketM.png'),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Buy Data Pack ATOM',style: textStyle3(),),
                                      Text('1 October 2023',style: textStyle4(),)
                                    ],
                                  ),
                                  Text('-2,000',style: textStyle5(),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  TextStyle textStyle5() {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black
    );
  }

  TextStyle textStyle4() {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(159, 159, 159, 1)
    );
  }

  TextStyle textStyle3() {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(6, 6, 6, 1)
    );
  }

  TextStyle textStyle2() {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.white
    );
  }

  TextStyle textStyle1() {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(49, 49, 49, 1)
    );
  }
}