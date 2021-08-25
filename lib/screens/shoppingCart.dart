import 'package:flutter/material.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('CART', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
body: Column(
  children: [
    SizedBox(height: 100,),
   Center(
     child: CircleAvatar(
       backgroundColor: Colors.white,
       radius: 80,
       child: Icon(Icons.shopping_cart, color: Colors.pink[200],size: 60,)
     )
   ),
     SizedBox(height: 30,),
   Text('CART IS EMPTY', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
  ]
)
    );
  }
}


Widget cartItem(String img, name, price,detail, IconData verified, favorite, share, plus, minus, String quantity ){



return Container(
child: Card(
  child: Container(
    child: Row(
      children:[
        Icon(verified),
        Image.asset(img),
        Column(
          children: [
            Text(name),
        Text(price),
         Text(detail),
          ]
        ),
        Row(
          children: [
            Icon(favorite),
            Icon(share)
          ]
        ),
        Column(
          children:[
            Icon(plus),
            Text(quantity),
            Icon(minus)

          ]
        )
      ]
    )

  )
),
);
}