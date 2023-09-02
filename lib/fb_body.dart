import 'package:fbenum/fb_enum.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class FBBody extends StatefulWidget {
  const FBBody({super.key});

  @override
  State<FBBody> createState() => _FBBodyState();
}

class _FBBodyState extends State<FBBody> {
  CommMethod commMethod = CommMethod.phone;

  final commMethodPhone = CommMethod.phone;
  final commMethodText = CommMethod.text;
  final commMethodEmail = CommMethod.email;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    child: commMethodPhone.commIcon,
                    onTap: () {
                      setState(() {
                        commMethod = CommMethod.phone;
                      });
                    },
                  ),
                  Text(
                    commMethodPhone.name,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    child: commMethodText.commIcon,
                    onTap: () {
                      setState(() {
                        commMethod = CommMethod.text;
                      });
                    },
                  ),
                  Text(
                    commMethodText.name,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    child: commMethodEmail.commIcon,
                    onTap: () {
                      setState(() {
                        commMethod = CommMethod.email;
                      });
                    },
                  ),
                  Text(
                    commMethodEmail.name,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          commMethod.commIcon,
        ],
      ),
    );
  }
}
