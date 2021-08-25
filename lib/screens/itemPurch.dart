import 'package:flutter/material.dart';
import 'package:flutter_app7/screens/shoppingCart.dart';


class PurchItem extends StatefulWidget {
  @override
  _PurchItemState createState() => _PurchItemState();
}

class _PurchItemState extends State<PurchItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Details',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           
            Material(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
                          child: CircleAvatar(
                              backgroundColor: Colors.pink[200],
                            foregroundColor: Colors.white,
              

              ),
            ),
            Material(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
                          child: CircleAvatar(
                            backgroundColor: Colors.green[200],
                            foregroundColor: Colors.white,
                
              ),
            ),
            Material(
              elevation: 5,
              
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
                          child: CircleAvatar(
                              backgroundColor: Colors.red[500],
                            foregroundColor: Colors.white,
          

              ),
            ),
          ]
        ),
        SizedBox(height: 20,),
          Center(
            child: Container(
              height: 200,
              child: Image.asset('assets/blouse1.jpg'
              ),
              
            ),
          ),

          SizedBox(height: 15,),
          Text('Women Blouse and Tops',style: TextStyle(fontSize: 15, )),
         
          SizedBox(height: 5,),
            Text('\$20.50', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
SizedBox(height: 15,),
             Container(
              width: 200,
              child: RaisedButton(
                color: Colors.pink[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text('Add To Cart',style: TextStyle(fontSize: 15, color: Colors.white),),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> Cart()
                  ));
                }
              ),
            ),
        ]
      )
    );
  }
}