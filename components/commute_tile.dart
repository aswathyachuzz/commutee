// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CommuteTile extends StatelessWidget {
  const CommuteTile({
    Key? key,
    required this.icon,
    required this.leftSideText,
    required this.rightSideText,
    required this.newStyle,
  }) : super(key: key);

  final IconData icon;
  final String leftSideText;
  final String rightSideText;
  final TextStyle newStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(25)),
                    color: Colors.black12,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(icon),
                      Text(leftSideText),
                    ],
                  ))),
          Expanded(flex: 3, child: Center(child: Text(rightSideText))),
        ],
      ),
    );
  }
}
