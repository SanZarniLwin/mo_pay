import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mo_pay/forgot_password/passport.dart';
import 'package:mo_pay/forgot_password/security_question.dart';
import 'package:provider/provider.dart';

class data extends ChangeNotifier{
  final TextEditingController controller = TextEditingController();

  bool saving = false;

  int num = 1;
  String division = "Kachin";
  String nationality = "N";

  List<int> numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14];
  List<String> divisions = [
    'Kachin', 'Kayah', 'Kayin', 'Chin', 'Sagaing', 'Tanintharyi', 'Bago', 
    'Magway', 'Mandalay', 'Mon', 'Rakhine', 'Yangon', 'Shan', 'Ayeyarwady'
  ];
  List<String> nationalities = ['N', 'E'];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> save() async {
    try {
       if (controller.text.trim().isNotEmpty) {
        await FirebaseFirestore.instance.collection('NRC_Number').add({
          'NRC_Number': ('$num/$division($nationality)${controller.text.trim()}'),
          'createdAt': FieldValue.serverTimestamp(),
        });
      }
    } catch (e) {
      SnackBar(content: Text('Failed $e'),);
    }
  }

}

class IdVerify extends StatefulWidget {
  const IdVerify({super.key});

  @override
  State<IdVerify> createState() => _IdVerifyState();
}

class _IdVerifyState extends State<IdVerify> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: data(),
      builder: (context, _) {
        return Scaffold(
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 50, 30, 10),
                height: 315,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/otpBg.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.of(context).pop(), 
                          icon: Image.asset('assets/images/back.png'),
                        )
                      ],
                    ),
                    SizedBox(height: 40,),
                    Text(
                      'ID Verification',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Please fill NRC information to confirm\nidentity of wallet user',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CircularProgressIndicator(
                                value: 0.66,
                                valueColor: AlwaysStoppedAnimation(Colors.white),
                                backgroundColor: Color.fromRGBO(242, 242, 242, 0.5),
                                strokeWidth: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text(
                                    '/3',
                                    style: TextStyle(
                                      color: Color.fromRGBO(159, 159, 159, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NRC/Passport',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(96, 96, 96, 1),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 14,),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color.fromRGBO(194, 194, 194, 1))
                              ),
                              child: Text(
                                'NRC',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const Passport(),
                                  )
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Color.fromRGBO(194, 194, 194, 1))
                                ),
                                child: Text(
                                  'Passport',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(96, 96, 96, 1),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 14,),
                      Text(
                        'NRC Number',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(96, 96, 96, 1),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 14,),
                      Consumer<data>(
                        builder: (context, provider, child) {
                          return Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10, right: 10),
                                width: 75,
                                height: 56,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color.fromRGBO(216, 216, 216, 1)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownButton<int>(
                                  isExpanded: true,
                                  value: provider.num,
                                  items: provider.numbers.map((n) => DropdownMenuItem(value: n,child: Text('$n'))).toList(), 
                                  onChanged: (v) {
                                    provider.num = v ?? provider.num;
                                    provider.notifyListeners();
                                  }
                                ),
                              ),
                              SizedBox(width: 8,),
                              Expanded(
                                child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 15, right: 15),
                                  height: 56,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color.fromRGBO(216, 216, 216, 1)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: DropdownButton(
                                    isExpanded: true,
                                    value: provider.division,
                                    items: provider.divisions.map((d) => DropdownMenuItem(value: d,child: Text(d))).toList(), 
                                    onChanged: (v) {
                                      provider.division = v ?? provider.division;
                                      provider.notifyListeners();
                                    }
                                  ),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10, right: 10),
                                height: 56,
                                width: 75,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(216, 216, 216, 1)
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownButton(
                                  isExpanded: true,
                                  value: provider.nationality,
                                  items: provider.nationalities.map((n) => DropdownMenuItem(value: n,child: Text(n))).toList(), 
                                  onChanged: (v) {
                                    provider.nationality = v ?? provider.nationality;
                                    provider.notifyListeners();
                                  }
                                ),
                              )
                            ],
                          );
                        }
                      ),
                      SizedBox(height: 20,),
                      Consumer<data>(
                        builder: (context, value, child) {
                          return TextField(
                            controller: value.controller,
                            decoration: InputDecoration(
                              hintText: 'Please Enter NRC Number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                          );
                        }
                      ),
                      SizedBox(height: 150,),
                      Consumer<data>(
                        builder: (context, value, child) {
                          return GestureDetector(
                            onTap: () async {
                              if (!value.saving) {
                                await value.save();
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const SecurityQuestion(),
                                  )
                                );
                              }
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
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                            ),
                          );
                        }
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}