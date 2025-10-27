import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mo_pay/home_topup_qr/home1.dart';
import 'package:provider/provider.dart';

class data extends ChangeNotifier{

  final TextEditingController businessName = TextEditingController();
  final TextEditingController businessType = TextEditingController();
  final TextEditingController contactPN = TextEditingController();
  final TextEditingController contactPPN = TextEditingController();
  final TextEditingController message = TextEditingController();

  bool agreed = false;
  bool saving = false;

  @override
  void dispose() {
    businessName.dispose();
    businessType.dispose();
    contactPN.dispose();
    contactPPN.dispose();
    message.dispose();
    super.dispose();
  }

  Future<void> saveToFire() async {
    saving = true; notifyListeners();
    try {
      if (!agreed) {
        throw Exception('You need to agree Terms and Conditions');
      }
      if (
        businessName.text.trim().isNotEmpty ||
        businessType.text.trim().isNotEmpty ||
        contactPN.text.trim().isNotEmpty ||
        contactPPN.text.trim().isNotEmpty ||
        message.text.trim().isNotEmpty
      ) {
        await FirebaseFirestore.instance.collection('registration').add({
          'businessName': businessName.text.trim(),
          'businessType': businessType.text.trim(),
          'ContactPersonName': contactPN.text.trim(),
          'ContactPersonPhoneNumber': contactPPN.text.trim(),
          'Message': message.text.trim(),
          'createdAt': FieldValue.serverTimestamp(),
        });
      }
    } catch (e) {
      SnackBar(content: Text('Failed $e'));
    }
    saving = false;
    notifyListeners();
  }

}

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: data(),
      builder: (context, _) {
        return Scaffold(
          body: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(30, 70, 30, 30),
                  height: 249,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/regiBg.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            }, 
                            icon: Image.asset('assets/images/back.png')
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'your pay  ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Mo payment',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Application',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                'Register Your Business',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Business Name',
                            style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Consumer<data>(
                            builder: (context, value, child) {
                              return TextField(
                                controller: value.businessName,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              );
                            }
                          ),
                          SizedBox(height: 20,),
                          Text(
                            'Business Type',
                            style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Consumer<data>(
                            builder: (context, value, child) {
                              return TextField(
                                controller: value.businessType,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              );
                            }
                          ),
                          SizedBox(height: 20,),
                          Text(
                            'Contact Person Name',
                            style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Consumer<data>(
                            builder: (context, value, child) {
                              return TextField(
                                controller: value.contactPN,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              );
                            }
                          ),
                          SizedBox(height: 20,),
                          Text(
                            'Contact Person Phone Number',
                            style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Consumer<data>(
                            builder: (context, value, child) {
                              return TextField(
                                controller: value.contactPPN,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              );
                            }
                          ),
                          SizedBox(height: 20,),
                          Text(
                            'Message',
                            style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Consumer<data>(
                            builder: (context, value, child) {
                              return TextField(
                                controller: value.message,
                                maxLines: 4,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              );
                            }
                          ),
                          SizedBox(height: 20,),
                          Center(
                            child: Row(
                              children: [
                                Consumer<data>(
                                  builder: (context, provider, child) {
                                    return Checkbox(
                                      value: provider.agreed, 
                                      onChanged: (value) {
                                        provider.agreed = value ?? false;
                                        provider.notifyListeners();
                                      },
                                    );
                                  }
                                ),
                                TextButton(
                                  onPressed: _showTermsAndConditions, 
                                  child: Text(
                                    'I agree with the Terms & Conditions',
                                    style: TextStyle(
                                      color: Color.fromRGBO(102, 103, 170, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8,),
                          Consumer<data>(
                            builder: (context, value, child) {
                              return GestureDetector(
                                onTap: () async {
                                  if (!value.saving) {
                                    await value.saveToFire();
                                  }
                                  _showSuccess();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 56,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromRGBO(102, 103, 170, 1)
                                  ),
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
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
                ),
              ],
            ),
          ),
        );
      }
    );
  }

  void _showTermsAndConditions() {
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(), 
                    icon: Icon(Icons.close)
                  )
                ],
              ),
              Text(
                'Terms and Conditions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                style: TextStyle(
                  color: Color.fromRGBO(96, 96, 96, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                '(1). The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a',
                style: TextStyle(
                  color: Color.fromRGBO(96, 96, 96, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                '(2). The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a',
                style: TextStyle(
                  color: Color.fromRGBO(96, 96, 96, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                '(3). The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.',
                style: TextStyle(
                  color: Color.fromRGBO(96, 96, 96, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSuccess() {
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        content:  Container(
          padding: const EdgeInsets.fromLTRB(15, 30, 20, 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(102, 103, 170, 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset('assets/images/cong.png')
              ),
              SizedBox(height: 30,),
              Text(
                'Congrats!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 15,),
              Text(
                'Your account is successfully',
                style: TextStyle(
                  color: Color.fromRGBO(96, 96, 96, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'registered',
                style: TextStyle(
                  color: Color.fromRGBO(96, 96, 96, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 40,),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Home1(),
                    )
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(102, 103, 170, 1)
                  ),
                  child: Text(
                    'Ok',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}