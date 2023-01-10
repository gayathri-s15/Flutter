import 'package:bems/forgot.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';



class otpscreen extends StatefulWidget {
  const otpscreen({Key? key}) : super(key: key);


  @override
  _otpscreenState createState() => _otpscreenState();
}

class _otpscreenState extends State<otpscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: TextButton(
              child: Text("Forgot password"),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Container(
                          child: AlertDialog(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                              title: const Text(
                                "OTP",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              actions: [
                                Container(
                                    padding: EdgeInsets.all(30),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: const [
                                              _textFieldOTP(
                                                  first: true, last: false),
                                              _textFieldOTP(
                                                  first: false, last: false),
                                              _textFieldOTP(
                                                  first: false, last: false),
                                              _textFieldOTP(
                                                  first: false, last: true),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),

                                          Container(
                                            alignment: Alignment.center,
                                            width: 209,
                                            height: 50,
                                            decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                                                color: Colors.blue
                                            ),
                                            child: GestureDetector(
                                              child: const Center(
                                                  child: Text('Submit',
                                                    style:TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black54,
                                                      fontSize: 20,
                                                    ),
                                                  )),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (_) => const forgot()));
                                              },),),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  "Didn’t receive OTP ?",
                                                ),
                                                TextButton(
                                                  onPressed: () {},
                                                  child: const Text("Resend OTP"),
                                                ),
                                              ])
                                        ]))
                              ]));
                    });
              })),
    );
  }
}

class _textFieldOTP extends StatelessWidget {
  final bool first;
  final bool last;
  const _textFieldOTP({super.key, required this.first, required this.last});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 45,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20,),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
                borderRadius: BorderRadius.circular(0)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple),
                borderRadius: BorderRadius.circular(0)),
          ),
        ),
      ),
    );

  }
}
