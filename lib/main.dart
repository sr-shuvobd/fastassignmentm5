import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme:ThemeData(primarySwatch: Colors.teal),
      color: Colors.cyan,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
 MySnackBar(message,context){
   return ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(content:Text(message) )
   );
 }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 3,
    child: Scaffold(
    appBar: AppBar(
    title: Text("Ostad App"),
    centerTitle: true,
    bottom: TabBar(
    tabs: [
    Tab(text:"Page-1",icon: Icon(Icons.add_a_photo),),
    Tab(text:"Page-2",icon: Icon(Icons.account_balance_wallet_outlined),),
    Tab(text:"Page-3",icon: Icon(Icons.account_box_rounded),),
    ],
    ),
    ),
    body: TabBarView(
    children: [
    Center(child: Text("Hello I'm page-1"),),
    Center(child: Text("Hello I'm page-2")),
    Center(child: Text("Hello I'm page-3")),
    ],
    ),



    floatingActionButton: FloatingActionButton(
    onPressed: (){MySnackBar("flutting Button", context);},
    elevation: 10,
    child: Icon(Icons.add),
    backgroundColor: Colors.purpleAccent,


    ),


    bottomNavigationBar: BottomNavigationBar(
    items: [
    BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
    BottomNavigationBarItem(icon: Icon(Icons.wallet),label:"Wallet"),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp),label:"Profile"),
    ],
    onTap: (int Index){
    if(Index == 0){
    MySnackBar("Home", context);
    }
    if(Index == 1){
    MySnackBar("Wallet", context);
    }
    if(Index == 2){
    MySnackBar("Profile", context);
    }
    },
    ),

    drawer: Drawer(
    child: ListView(
    children: [
    DrawerHeader(
    padding: EdgeInsets.all(0),
    child: UserAccountsDrawerHeader(
    decoration: BoxDecoration(color: Colors.purpleAccent),
    accountName: Text("MD Shohanur"),
    accountEmail: Text ("srs.bd420@gmail.com"),
    currentAccountPicture: Image.network("https://image.pngaaa.com/538/5030538-middle.png"),
    )
    ),
    ListTile (title: Text("Setting"),leading: Icon(Icons.settings),),
    ListTile(title: Text("Notification"),leading: Icon(Icons.notification_add),),
    ListTile(title: Text("Store"),leading: Icon(Icons.store),),
    ListTile(title: Text("Help"),leading: Icon(Icons.help),),

    ],
    )
    ),
    ),
    );
    }

  }

