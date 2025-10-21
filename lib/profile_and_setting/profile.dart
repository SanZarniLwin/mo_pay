import 'package:flutter/material.dart';
import 'package:mo_pay/profile_and_setting/aboutInfo.dart';
import 'package:mo_pay/profile_and_setting/aboutOne.dart';
import 'package:mo_pay/profile_and_setting/setting.dart';
import 'package:mo_pay/profile_and_setting/user_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 45),
            height: 249,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pfBg.png'),
                fit: BoxFit.fitWidth
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(), 
                  icon: Image.asset('assets/images/back.png')
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pizza Co',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          '09757802648',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(242, 242, 242, 1)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 2,),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const UserProfile(),
                          )
                        );
                      }, 
                      icon: Image.asset('assets/images/forward.png')
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(30, 40, 30, 50),
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
                                builder: (context) => const Aboutone(),
                              )
                            );
                          },
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
                                  child: Image.asset('assets/images/wallet3.png'),
                                ),
                                Text(
                                  'My Wallet',
                                  style: textStyle1(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Aboutinfo(),
                            )
                          );
                        },
                        child: Container(
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
                                child: Image.asset('assets/images/about.png'),
                              ),
                              Text(
                                'About',
                                style: textStyle1(),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
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
                                child: Image.asset('assets/images/cal.png'),
                              ),
                              Text(
                                'Free and\nLimitation',
                                style: textStyle1(),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Setting(),
                            )
                          );
                        },
                        child: Container(
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
                                child: Image.asset('assets/images/setting.png'),
                              ),
                              Text(
                                'Setting',
                                style: textStyle1(),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 50,),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 30, 50, 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(242, 242, 242, 1),
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
                            color: Color.fromRGBO(102, 103, 170, 1)
                          ),
                          child: Image.asset('assets/images/tuto.png'),
                        ),
                        Column(
                          spacing: 8,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Here is tutorials about your\npay for you',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromRGBO(102, 103, 170, 1)
                              ),
                              child: Text(
                                'Watch Tutorials',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.white
                                ),
                              ),
                            )
                          ],
                        )
                      ],
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
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black
    );
  }
}