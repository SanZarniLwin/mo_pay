import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 131,
            padding: EdgeInsets.fromLTRB(20, 70, 25, 30),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/historyBg.png'),
                fit: BoxFit.fitWidth
              )
            ),
            child: Row(
              spacing: 30,
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Image.asset('assets/images/back.png',),
                ),
                Text(
                  'Transcation Detail',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(25, 50, 25, 40),
              child: Column(
                spacing: 23,
                children: [
                  Image.asset('assets/images/transcationND.png'),
                  Text(
                    'Transction Name Details',
                    style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Transcation Name',style: textStyle1(),),
                      Text('MoBiz Fund Out',style: textStyle2(),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Transcation Code',style: textStyle1(),),
                      Text('1234567891011',style: textStyle2(),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Transcation Status',style: textStyle1(),),
                      Text('Done',style: textStyle2(),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Accout Number',style: textStyle1(),),
                      Text('xxxxxxxxxxx3456',style: textStyle2(),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Time',style: textStyle1(),),
                      Text('3 November 2022',style: textStyle2(),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sender Name',style: textStyle1(),),
                      Text('Su Su',style: textStyle2(),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sender Number',style: textStyle1(),),
                      Text('09123456789',style: textStyle2(),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Amount',style: textStyle1(),),
                      Text('1,000,000.000',style: textStyle2(),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Remark',style: textStyle1(),),
                      Text('Move to bank',style: textStyle2(),)
                    ],
                  ),
                  Divider(height: 1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',style: textStyle1(),),
                      Row(
                        children: [
                          Text('1,000,000.000',style: textStyle2(),),
                          Text('(expense)', style: textStyle1(),)
                        ],
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

  TextStyle textStyle2() {
    return TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(31, 31, 31, 1),
                      );
  }

  TextStyle textStyle1() {
    return TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(138, 137, 137, 1),
                      );
  }
}