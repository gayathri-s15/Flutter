import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
                children:[
                  Image.asset('assets/signup.png'),
                  SizedBox(height: 40,),
                  Column(
                    children: [
                      inputFile(label: "Username"),
                      SizedBox(height: 20,),
                      inputFile(label: "Email Id"),
                      SizedBox(height: 20,),
                      inputFile(label: "Phone Number"),
                      SizedBox(height: 20,),
                      inputFile(label: "Password", obscureText: true),
                      SizedBox(height: 20,),
                      inputFile(label: "Confirm Password ", obscureText: true),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(children: [
                    Checkbox(

                        activeColor: Color(0xff12734C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        value: checked,
                        onChanged: ((value) {
                          setState(() {
                            checked = value!;
                          });
                        })),
                    Text("Terms and Conditions")
                  ]),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 118,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff12734C),
                      ),
                      child: Center(
                        child: Text(
                          "SIGN UP",
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account ?',
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color(0xff12734C),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,)
                ]),
          ),
        ));
  }
}
// we will be creating a widget for text field
Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color:Colors.black87
        ),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                const BorderSide(color:Color(0xff12734C), width: 1)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                const BorderSide(color: Color(0xff12734C), width: 1)),
            hintText: "Enter your "+label,
            fillColor: Color(0xff47B5FF),
          )
      ),
    ],
  );
}
