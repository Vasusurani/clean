import 'package:cleaning/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(children: [
      Container(
        color: Colors.deepPurple,
      ),
      Container(
        width: context.screenWidth,
        height: context.percentHeight * 80,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60))),
        child: VStack([
          Image(
            image: AssetImage("image/vacume.jpeg"),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: 'Email Address',
                        prefixIcon: Icon(Icons.email_outlined)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: 'Email Password',
                        prefixIcon: Icon(Icons.lock)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  "Forgot Password?"
                      .text
                      .textStyle(context.captionStyle)
                      .make()
                      .objectCenterRight(),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple, elevation: 4),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => onboarding(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 60, right: 60),
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ))
                ],
              ))
        ]),
      ),
      Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Padding(
          padding: const EdgeInsets.only(left: 55),
          child: CircleAvatar(
              child: Image(
            image: AssetImage('image/google.png'),
          )),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60, left: 70),
          child: Text('Login And Get Many Benefits',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        )
      ])
    ]));
  }
}
