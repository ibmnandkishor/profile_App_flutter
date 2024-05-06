// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp( 
debugShowCheckedModeBanner: false,
home:Home(),
)
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// drawer: Text('hello'),
// drawer: Icon(Icons.menu),
drawer: Drawer(
  child:ListView(
    padding: EdgeInsets.all(10),
    children: [ 
    DrawerHeader(
    // decoration: BoxDecoration(color: Colors.blue),
    child:UserAccountsDrawerHeader( 
      accountName: Text('Nandkishor'),
      accountEmail: Text('nand@gmail.com'),
      currentAccountPictureSize: Size.square(60),
      currentAccountPicture: CircleAvatar( 
        backgroundImage:AssetImage('../assets/nand.jpg'),
         
      ),
    ),
    ),
    ListTile(
      title: Text(' Home - Banda UP(210201)'),
      leading: Icon(Icons.home),
      onTap: (){},
      ),
      ListTile(
      title: Text('Contact - 7235922730'),
      leading: Icon(Icons.call),
      onTap: (){},
      ),
     ListTile(
      title: Text('E-mail - nand@gmail.com'),
      leading: Icon(Icons.mail),
      onTap: (){},
      ),
      ListTile(
   
      leading: Icon(Icons.exit_to_app),
      title: Text('Logout'),
      onTap: (){},
      ),
    ],
  ),
),


      appBar: AppBar(
        title: Text("Nandkishor"),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),

      
     body:Center( 
      child:ElevatedButton(
      onPressed: ()=>showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Icon(Icons.logout),
          content:Text('Are you sure you want to logout?'),
          actions:[ 
            ElevatedButton( 
              onPressed: () =>Navigator.pop(context, 'yes'),
              child:Text('yes'),
            ),
            ElevatedButton( 
              onPressed: () => Navigator.pop(context, 'Sign Out'),
              child:Text('Go'),
            ),
          ]
        ),
      ),
      child:Text('home page'),
      style:ElevatedButton.styleFrom(
        foregroundColor: Colors.green,
      ),
     ),),
     floatingActionButton: FloatingActionButton( 
      onPressed: (){},
      child:Text('Click'),
     ),
// endDrawer: Drawer(),


    );
  }
}