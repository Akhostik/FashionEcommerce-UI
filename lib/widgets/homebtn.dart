import 'package:flutter/material.dart';

class Homebtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
          child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         hBtn('POPULAR', Colors.black45),
          hBtn('GWONJO', Colors.pinkAccent[200]),
           hBtn('UK USED', Colors.black45),
         
        ],
      ),
  ),
    );
  }
}

Widget hBtn(String title, Color col){
  return  Container(
          child: RaisedButton(
            color: col,
            onPressed:(){} ,
            child: Text('$title', style: TextStyle(color: Colors.white)),
             shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
          ),
        );
}