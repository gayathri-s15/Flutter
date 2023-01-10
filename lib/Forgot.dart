import 'package:flutter/material.dart';

class forgot extends StatelessWidget {
  const forgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,

          children: [

            const Padding(padding: EdgeInsets.all(10)),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Password',
                  style: TextStyle(fontSize: 16),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'password',
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Confirm Password',
                  style: TextStyle(fontSize: 16),
                )),

            Container(

              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),

            Center(
              child: Container(
                  alignment: Alignment.center,
                  width: 299,
                  height: 50,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.blue),
            ),
            GestureDetector(
              child: const Center(
                  child: Text(
                    'Resend',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 20,
                    ),
                  )),

            ),
          ]),
    );
  }
}
