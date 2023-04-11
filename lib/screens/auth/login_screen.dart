
import 'package:chatsapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isAnimate = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _isAnimate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      //appbar--------
      appBar: AppBar(
        title: Text("Welcome to Chat Mate"),
        automaticallyImplyLeading: false,
      ),

      body: Stack(
        children: [

          //app icon --------------------------
          AnimatedPositioned(
            //top bata total heght ko 15% tala basne
            top: mq.height * .15,
            //left bat total width to 25%  ma basne as width of the image is 50 % of
            //screen width that means baki 50% ko adha ma basxa means middle ma basxa
            right:_isAnimate? mq.width * .25:-mq.width*.50,
            width: mq.width * .50,
            child: Image.asset("images/chat.png"),
            duration: Duration(seconds: 1),
          ),
          Positioned(
              bottom: mq.height * .15,
              left: mq.width * .05,
              height: mq.height * .06,
              width: mq.width * .9,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      // textStyle: TextStyle(color: Colors.black),
                      elevation: 1,
                      backgroundColor: Color.fromARGB(255, 127, 241, 213),
                      shape: const StadiumBorder()),
                  icon: Image.asset(
                    "images/google.png",
                    height: mq.height * .03,
                  ),
                  label: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Login with ",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "Google ",
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ]),
                  ))),
        ],
      ),
    );
  }
}
