import 'package:flutter/material.dart';
import 'package:flutter_app7/screens/homeNav.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
          body:Stack(
            fit: StackFit.expand,
            
            
            children: [
              Image(
                color: Colors.pinkAccent,
                colorBlendMode: BlendMode.overlay,
                fit: BoxFit.cover,
                image: AssetImage('assets/radd.jpg')
              ),

             
               Container(

                margin: EdgeInsets.fromLTRB(20, 200, 20, 0),
                  child: SingleChildScrollView(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                           child: Card(
                             elevation: 15,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(20)
                             ),
                      child: Container(
                        
                       height: 300,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Center(child: Text('Login',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),),
                            TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Email',
                            focusColor: Colors.black
                          ),
                            ),
                            TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Password',
                            focusColor: Colors.black
                          ),
                            ),
                         
                          ],
                        ),
                      ),
                    ),
                                      ),
                  )
         
              ),
                
                            Positioned(
                              top: 470,
                              right: 50,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                color: Colors.pinkAccent[100],
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeNav()));
                                },
                                child: Container(
                                  width: 100,
                                  child: Center(child: Text('Login')))
                              ))
            ]
          )
    );
  }
}