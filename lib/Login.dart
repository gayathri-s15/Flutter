import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/colors.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({super.key});

  @override
  State<LoginScreens> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  bool isRememberMe = false;
  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'EMAIL',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 14),
        Container(
          alignment: Alignment.centerLeft,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 194, 194, 194),
              borderRadius: BorderRadius.circular(
                (10),
              )),
          height: 40,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(13.0),
              hintText: 'Enter your Email',
              hintStyle: TextStyle(),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PASSWORD',
          style: TextStyle(
              color: Color.fromARGB(255, 3, 3, 3),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 14),
        Container(
          alignment: Alignment.centerLeft,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 196, 196, 196),
              borderRadius: BorderRadius.circular(
                (10),
              )),
          height: 40,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(13.0),
              hintText: 'Enter your Password',
              hintStyle: TextStyle(),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildForgetpass() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
          onPressed: () => print(''),
          child: Text(
            'Forget Password?',
            style: TextStyle(color: Color.fromARGB(255, 4, 4, 4)),
          )),
    );
  }

  Widget buildRememberme() {
    return Container(
      height: 20,
      child: Row(children: [
        Theme(
          data: ThemeData(unselectedWidgetColor: Color.fromARGB(255, 0, 0, 0)),
          child: Checkbox(
              value: isRememberMe,
              checkColor: Color.fromARGB(255, 255, 255, 255),
              activeColor: Color.fromARGB(255, 0, 0, 0),
              onChanged: ((value) {
                setState(() {
                  isRememberMe = value!;
                });
              })),
        ),
        Text('Remember me',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)))
      ]),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => print(''),
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        child: Text(
          'SIGN IN',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget buildSignupBtn() {
    var textSpan = TextSpan(children: [
      TextSpan(
          text: 'Not a member?',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 13,
          )),
      TextSpan(
        text: 'SIGNUP',
        style: TextStyle(
          color: Color.fromARGB(255, 71, 117, 255),
          fontSize: 13,
        ),
      ),
    ]);
    return GestureDetector(
      onTap: () => print(''),
      child: RichText(
        text: textSpan,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
              child: Stack(
                children: <Widget>[
                  Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 120,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text(
                              'SIGN IN',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 50),
                            buildEmail(),
                            SizedBox(height: 50),
                            buildPassword(),
                            SizedBox(height: 30),
                            buildForgetpass(),
                            buildRememberme(),
                            buildLoginBtn(),
                            buildSignupBtn(),
                          ],
                        ),
                      ))
                ],
              )),
        ));
  }
}
