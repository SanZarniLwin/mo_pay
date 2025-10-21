import 'package:flutter/material.dart';
import 'package:mo_pay/fund_in_out/fund_in_out.dart';
import 'package:mo_pay/profile_and_setting/profile.dart';

class Qr extends StatefulWidget {
  const Qr({super.key});

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
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
                fit: BoxFit.fitWidth,
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
                      'Pizza Co',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: 3,),
                    Text(
                      'Phone no(*******2468)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'My QR', 
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 70, 30, 50),
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    'Scan to pay me',
                    style: TextStyle(
                      color: Color.fromRGBO(73, 73, 73, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Image.asset('assets/images/qr1.png'),
                  SizedBox(height: 40,),
                  Text(
                    'Set Amount',
                    style: TextStyle(
                      color: Color.fromRGBO(96, 96, 96, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder()
                            ),
                          )
                        ),
                        Text(
                          'Ks',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(138, 137, 137, 1)
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 140,),
                  GestureDetector(
                    onTap: _showDialog,
                    child: Container(
                      height: 56,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(102, 103, 170, 1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                        'Share',
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

  void _showDialog() {
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 3,),
                IconButton(onPressed: () => Navigator.of(context).pop(), icon: Icon(Icons.close))
              ],
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromRGBO(102, 103, 170, 1)
              ),
              child: Image.asset('assets/images/alert.png'),
            ),
            SizedBox(height: 20,),
            Text(
              'Alert!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Please Contact to Mo Office',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(96, 96, 96, 1)
              ),
            ),
            SizedBox(height: 25,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  )
                );
              },
              child: Container(
                height: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(102, 103, 170, 1)
                ),
                child: Text(
                  'Contact Now',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}