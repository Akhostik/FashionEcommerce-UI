import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app7/screens/itemPurch.dart';

class Details extends StatefulWidget {

   
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('BLOUSE', style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 100,),
             CarouselSlider(
              items: [
                  
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(

                          image: AssetImage('assets/blouse1.jpg'),
                     fit: BoxFit.fill
                    ),
                  ),
                ),
                  
                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/blouse2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            
          ],
            options: CarouselOptions(
                height: 300.0,
              
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 500),
                viewportFraction: 0.8,
              ),
        ),

        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text('Details'),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> PurchItem()
                  ));
                }
              ),
            ),
            Material(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
                          child: CircleAvatar(
                              backgroundColor: Colors.pink[200],
                            foregroundColor: Colors.white,
                child: Icon(Icons.shopping_cart),

              ),
            ),
            Material(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
                          child: CircleAvatar(
                            backgroundColor: Colors.pink[200],
                            foregroundColor: Colors.white,
                child: Icon(Icons.favorite),

              ),
            ),
            Material(
              elevation: 5,
              
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
                          child: CircleAvatar(
                              backgroundColor: Colors.pink[200],
                            foregroundColor: Colors.white,
                child: Icon(Icons.share),

              ),
            ),
          ]
        )

          ],
        ),
      ),

    );
  }
}