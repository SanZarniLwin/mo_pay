import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mo_pay/forgot_password/new_password.dart';

class SecurityQuestion extends StatefulWidget {
  const SecurityQuestion({super.key});

  @override
  State<SecurityQuestion> createState() => _SecurityQuestionState();
}

class _SecurityQuestionState extends State<SecurityQuestion> {

  final TextEditingController _colorController = TextEditingController();
  final TextEditingController _foodController = TextEditingController();
  final TextEditingController _personController = TextEditingController();

  bool saving = false;

  @override
  void dispose() {
    _colorController.dispose();
    _foodController.dispose();
    _personController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    setState(() {
      saving = true;
    });
    try {
      if (
        _colorController.text.trim().isNotEmpty||
        _foodController.text.trim().isNotEmpty||
        _personController.text.trim().isNotEmpty
      ) {
        await FirebaseFirestore.instance.collection('securityQ').add({
          'Color': _colorController.text.trim(),
          'Food': _foodController.text.trim(),
          'Person': _personController.text.trim(),
          'createdAt': FieldValue.serverTimestamp()
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed $e'))
      );
    } finally {
      if (mounted) {setState(() => saving = false,);}
    }
  }

  int expandedIndex = 1;
  @override
  Widget build(BuildContext context) {
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
                  'Security Question',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 8,),
                Text(
                  'Please enter security questions, you can\nanswer one out of questions',
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
                            value: 1,
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                            backgroundColor: Color.fromRGBO(242, 242, 242, 0.5),
                            strokeWidth: 2,
                          ),
                          Text(
                            '3/3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                            ),
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
              padding: EdgeInsets.fromLTRB(30, 40, 30, 50),
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(102, 103, 170, 1),
                          ),
                          child: Image.asset('assets/images/check.png'),
                        ),
                        SizedBox(width: 5,),
                        Flexible(
                          child: _question(
                            title: 'What is your favourite color?', 
                            index: 1,
                            expandedChild: TextField(
                              controller: _colorController,
                              maxLines: 4,
                              decoration: const InputDecoration(
                                hintText: 'Type your answer here...', 
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(159, 159, 159, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(102, 103, 170, 1),
                          ),
                          child: Image.asset('assets/images/check.png'),
                        ),
                        SizedBox(width: 5,),
                        Flexible(
                          child: _question(
                            title: 'What is your favourite food?', 
                            index: 0,
                            expandedChild: TextField(
                              controller: _foodController,
                              maxLines: 4,
                              decoration: const InputDecoration(
                                hintText: 'Type your answer here...', 
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(159, 159, 159, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(102, 103, 170, 1),
                          ),
                          child: Image.asset('assets/images/check.png'),
                        ),
                        SizedBox(width: 5,),
                        Flexible(
                          child: _question(
                            title: 'What is your favourite person?', 
                            index: 0,
                            expandedChild: TextField(
                              controller: _personController,
                              maxLines: 4,
                              decoration: const InputDecoration(
                                hintText: 'Type your answer here...', 
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(159, 159, 159, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 130,),
                    GestureDetector(
                      onTap: () async {
                        if (!saving) {
                          await _save();
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const NewPassword(),
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
                    )
                  ],
                ),
              ),
            )
          ),
        ],
      ),
    );
  }

  Widget _question({
    required String title,
    required int index,
    Widget? expandedChild,
  }) {
    final isExpanded = expandedIndex == index;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: Color.fromRGBO(242, 242, 242, 1))
      ),
      child: ExpansionTile(
        initiallyExpanded: isExpanded,
        maintainState: true,
        onExpansionChanged: (open) {
          if (mounted) {
            setState(() {
              expandedIndex = open ? index : -1;
            });
          }
        },
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(102, 103, 170, 1)
          ),
        ),
        trailing: Icon(
          isExpanded ? Icons.expand_less : Icons.expand_more,
        ),
        children: expandedChild != null ? [expandedChild] : const [],
      ),
    );
  }
}