import 'package:flutter/material.dart';



Widget saleCard(String img, Color col){

  return Container(
    height: 200,
    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
    child: Stack(
      children: [
        Material(
          elevation: 15,
                  child: Image(
            height: 150,
            width: 350,
            image: AssetImage(img),
            fit: BoxFit.cover,

          ),
        ),

        
        Container(
          margin: EdgeInsets.only(top:120),
          padding: EdgeInsets.all(10),
          height: 40,
          color: col,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('UP TO 70% OFF', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),

              RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text("View"),
                  onPressed: () {},
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
            ],
          ),
        )
      ],
    ),
  );
}