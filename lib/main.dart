import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Image.asset("assets/user.jpg", fit: BoxFit.cover,),
          ),

          DraggableScrollableSheet(
            minChildSize: 0.1,
            initialChildSize: 0.22,
            builder: (context, scrollController){
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: <Widget>[
                       //for user profile header
                       Container(
                         padding : EdgeInsets.only(left: 32, right: 32, top: 32),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             SizedBox(
                               height: 100,
                               width: 100,
                               child: ClipOval(
                                 child: Image.asset('assets/user.jpg', fit: BoxFit.cover,),
                               )
                             ),

                             SizedBox(width: 16,),
                             Expanded(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Text("John Doe", style: TextStyle(color: Colors.grey[800], fontFamily: "Roboto",
                                    fontSize: 36, fontWeight: FontWeight.w700
                                   ),),
                                   Text("Mobile Application Developer", style: TextStyle(color: Colors.grey[500], fontFamily: "Roboto",
                                       fontSize: 16, fontWeight: FontWeight.w400
                                   ),),
                                 ],
                               ),
                             ),
                             Icon(Icons.sms, color: Colors.blue, size: 40,)
                           ],
                         ),
                       ),

                       //performace bar

                       SizedBox(height: 16,),
                       Container(
                         padding: EdgeInsets.all(32),
                         color: Colors.blue,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Column(
                               children: <Widget>[
                                 Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: <Widget>[
                                     Icon(Icons.check_box, color: Colors.white, size: 30,),
                                     SizedBox(width: 4,),
                                     Text("234", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto", fontSize: 24
                                     ),)
                                   ],
                                 ),

                                 Text("Jobs Done", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400,
                                     fontFamily: "Roboto", fontSize: 15
                                 ),)
                               ],
                             ),

                             Column(
                               children: <Widget>[
                                 Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: <Widget>[
                                     Icon(Icons.favorite, color: Colors.white, size: 30,),
                                     SizedBox(width: 4,),
                                     Text("400", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,
                                         fontFamily: "Roboto", fontSize: 24
                                     ),)
                                   ],
                                 ),

                                 Text("Jobs Done", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400,
                                     fontFamily: "Roboto", fontSize: 15
                                 ),)
                               ],
                             ),

                             Column(
                               children: <Widget>[
                                 Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: <Widget>[
                                     Icon(Icons.star, color: Colors.white, size: 30,),
                                     SizedBox(width: 4,),
                                     Text("5", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,
                                         fontFamily: "Roboto", fontSize: 24
                                     ),)
                                   ],
                                 ),

                                 Text("Ratings", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400,
                                     fontFamily: "Roboto", fontSize: 15
                                 ),)
                               ],
                             ),
                           ],
                         ),
                       ),

                       SizedBox(height: 16,),
                       //container for about me

                       Container(
                         padding: EdgeInsets.only(left: 32, right: 32),
                         child: Column(
                           children: <Widget>[
                             Text("About Me", style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.w700,
                                 fontFamily: "Roboto", fontSize: 18
                             ),),

                             SizedBox(height: 8,),
                             Text("Hello, this is maaz, and I am from easy approach, and this is just a demo text for information about me"
                                 "Hello, this is maaz, and I am from easy approach, and this is just a demo text for information about me",
                               style: TextStyle(fontFamily: "Roboto", fontSize: 15),
                             ),

                           ],
                         ),
                       ),

                       SizedBox(height: 16,),
                       //Container for clients

                       Container(
                         padding: EdgeInsets.only(left: 32, right: 32),
                         child: Column(
                           children: <Widget>[
                             Text("Clients", style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.w700,
                                 fontFamily: "Roboto", fontSize: 18
                             ),),

                             SizedBox(height: 8,),
                             //for list of clients
                             Container(
                               width: MediaQuery.of(context).size.width-64,
                               height: 80,
                               child: ListView.builder(
                                   itemBuilder: (context, index) {
                                     return Container(
                                       width: 80,
                                       height: 80,
                                       margin: EdgeInsets.only(right: 8),
                                       child: ClipOval(child: Image.asset("assets/${index+1}.jpg", fit: BoxFit.cover,),),
                                     );
                                   },
                                 itemCount: 5,
                                 scrollDirection: Axis.horizontal,
                                 shrinkWrap: true,
                               ),
                             )

                           ],
                         ),
                       ),

                       SizedBox(height: 16,),

                       //Container for reviews

                       Container(
                         padding: EdgeInsets.only(left: 32, right: 32),
                         child: Column(
                           children: <Widget>[
                             Text("Reviews", style: TextStyle(color: Colors.grey[800], fontSize: 18, fontFamily: "Roboto",
                              fontWeight: FontWeight.w700
                             ),),


                             Container(
                               width: MediaQuery.of(context).size.width-64,
                               child: ListView.builder(
                                   itemBuilder: (context, index) {
                                     return Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: <Widget>[
                                              Text("Client $index", style: TextStyle(color: Colors.lightBlue, fontSize: 18, fontFamily: "Roboto",
                                                fontWeight: FontWeight.w700
                                              )),

                                             Row(
                                               children: <Widget>[
                                                 Icon(Icons.star, color: Colors.orangeAccent,),
                                                 Icon(Icons.star, color: Colors.orangeAccent,),
                                                 Icon(Icons.star, color: Colors.orangeAccent,),
                                               ],
                                             ),
                                           ],
                                         ),
                                         SizedBox(height: 8,),

                                         Text("He is very fast and good at his work", style: TextStyle(color: Colors.grey[800], fontSize: 14, fontFamily: "Roboto",
                                             fontWeight: FontWeight.w400
                                         )),
                                         SizedBox(height: 16,),
                                       ],
                                     );
                                   },
                                 itemCount: 8,
                                 shrinkWrap: true,
                                 controller: ScrollController(keepScrollOffset: false),
                               ),
                             )
                           ],
                         ),
                       )


                     ],
                  ),

                ),
              );
            },
          )
        ],
      ),
    );
  }
}

