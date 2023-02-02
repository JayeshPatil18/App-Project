import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../font_helper/default_fonts.dart';

class QuestionCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 10),

              child: Row(
                children: [
                  Icon(Icons.watch_later_outlined,
                      size: 16),
                  Container(
                      margin: EdgeInsets.only(left: 4),
                      child: Text("Expires in 2 days", style: textStyleMinDesc())),
                ],
              )),
          Text("TCS stock will increase in next 10 days?", style: textStyleDefault()),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: OutlinedButton(onPressed: (){},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                            ),
                            child: Text("Yes", style: textStyleBtn(textColor: Colors.blue)))),
                  ),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: OutlinedButton(onPressed: (){},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                            ),
                            child: Text("No", style: textStyleBtn(textColor: Colors.red)))),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}