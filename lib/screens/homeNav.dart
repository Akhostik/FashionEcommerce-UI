import 'package:flutter/material.dart';
import 'package:flutter_app7/screens/categories.dart';
import 'package:flutter_app7/screens/homePage.dart';
import 'package:flutter_app7/screens/shoppingCart.dart';


class HomeNav extends StatefulWidget {
  @override
  _HomeNavState createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {

  int selectedItem = 0;

  void tap(index){
    setState(() {
      selectedItem = index;
    });
  }
  List<Widget> pages  =[ 
    HomePage(),
    Cart(),
    Categories()
  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      drawer: Drawer(
        
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            Divider()
          ],
        ),
        
      ),
      bottomNavigationBar: 
      
      BottomNavigationBar(
        selectedItemColor: Colors.pink[200],
        currentIndex: selectedItem,
        onTap: tap,
        items: [

      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
        backgroundColor: Colors.yellow
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: 'Cart',
        backgroundColor: Colors.yellow
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.category_outlined),
        label: 'Categories',
      )
      ]) ,
// bottomNavigationBar: BottomNavigationBar(
//   currentIndex: selectedItem,
//   onTap: tap,
//   items: [
//     BottomNavigationBarItem(
//     icon: Icon(Icons.home)  
//     ),
//     BottomNavigationBarItem(
//     icon: Icon(Icons.shopping_cart)
//     ),
//     BottomNavigationBarItem(
//     icon: Icon(Icons.category)
//     )
//   ],
// ),

body: pages.elementAt(selectedItem),
    );
  }
}