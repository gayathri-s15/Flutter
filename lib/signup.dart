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
                  Text("Sign up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 10,),
                  Text("Create an account",
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.grey[700]),),
                  SizedBox(height: 40,),
                  Column(
                    children: [
                      inputFile(label: "Username"),
                      SizedBox(height: 20,),
                      inputFile(label: "Email"),
                      SizedBox(height: 20,),
                      inputFile(label: "Phone Number"),
                      SizedBox(height: 20,),
                      inputFile(label: "Password", obscureText: true),
                      SizedBox(height: 20,),
                      inputFile(label: "Confirm Password ", obscureText: true),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(children: [
                    Checkbox(
                        value: checked,
                        onChanged: ((value) {
                          setState(() {
                            checked = value!;
                          });
                        })),
                    Text("Agree Terms and conditions")
                  ]),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 200,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff47B5FF),
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
                        'Login',
                        style: TextStyle(
                          color: Color(0xff47B5FF),
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
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                const BorderSide(color:Color(0xff47B5FF), width: 1)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                const BorderSide(color: Color(0xff47B5FF), width: 1)),
            hintText: "Enter the "+label,
            fillColor: Color(0xff47B5FF),
          )
      ),
    ],
  );
}
