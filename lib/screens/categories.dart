import 'package:flutter/material.dart';
import 'package:flutter_app7/screens/details.dart';


class Categories extends StatefulWidget {
 
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  actions: [
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Icon(Icons.search),
    )
  ],
  iconTheme: IconThemeData(color: Colors.black),
  backgroundColor: Colors.white,
  centerTitle: true,
  title: Text('CATEGORIES',style: TextStyle(color: Colors.black),),
),
body: Stack(
  fit: StackFit.expand,
  children: [
    Image(
                color: Colors.pinkAccent,
                
                colorBlendMode: BlendMode.softLight,
                fit: BoxFit.cover,
                image: AssetImage('assets/radd.jpg')
              ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           catBtn('BLOUSE', ()=>Navigator.of(context).push(MaterialPageRoute(
             builder: (context)=>Details()
           ))),
            catBtn('PANTS', ()=>Navigator.of(context).push(MaterialPageRoute(
             builder: (context)=>Details()
           ))
            ),
             catBtn('JACKET', ()=>Navigator.of(context).push(MaterialPageRoute(
             builder: (context)=>Details()
           ))),
              catBtn('DRESS', ()=>Navigator.of(context).push(MaterialPageRoute(
             builder: (context)=>Details()
           ))),
              
        
          ]
        )
  ],
),
    );
  }
}

Widget catBtn(String catName, Function nav){
  
  return  Container(
     
      width: 200,
     child: RaisedButton(
       color: Colors.white,
       onPressed: nav,
        shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
       child: Text('$catName', style: TextStyle(fontSize: 20)),
     ),
    
  );
}

