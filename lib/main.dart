import 'package:amfistk/APROPOS.dart';
import 'package:amfistk/AUTRES.dart';
import 'package:amfistk/SPA.dart';
import 'package:amfistk/STKAMFI.dart';
import 'package:amfistk/home.dart';
import 'package:amfistk/main.dart';
import 'package:amfistk/my_drawer_header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.HOME;
  @override
  Widget build(BuildContext context) {
    var container;
    if(currentPage == DrawerSections.STK_AMFI) {
      container = PageSTKAMFI();
    }else if(currentPage == DrawerSections.STK_SPAA_11) {
      container = PageSPA();
    }else if(currentPage == DrawerSections.AUTRES) {
      container = PageAUTRE();
    } else if(currentPage == DrawerSections.A_PROPOS) {
      container = PageAPROPOS();
    }else if(currentPage == DrawerSections.HOME) {
      container = Pagehome();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
          title: Text("Sampana tanora kristianina"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );

  }

  Widget MyDrawerList(){
    return Container(
      padding: EdgeInsets.only(top: 15,),
      child: Column(
        //liste des menu
        children: [
          menuItem(1, "STK AMFI", Icons.notes,
               currentPage == DrawerSections.STK_AMFI ? true : false),

          menuItem(2, "STK SPAA 11", Icons.event,
              currentPage == DrawerSections.STK_SPAA_11 ? true : false),

          menuItem(3, "AUTRES",Icons.dashboard,
              currentPage == DrawerSections.AUTRES ? true : false),

          menuItem(4, "A PROPOS", Icons.settings,
              currentPage == DrawerSections.A_PROPOS ? true : false),

        ],
      ),
    );

  }
  Widget menuItem( int id, String title, IconData icon, bool selected){
    return Material(
      color: selected ? Colors.grey : Colors.transparent,
      child: InkWell(
        onTap: (){
          // lien si on cliq
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.STK_AMFI;
            } else if (id == 2) {
              currentPage = DrawerSections.STK_SPAA_11;
            } else if (id == 3) {
              currentPage = DrawerSections.AUTRES;
            } else if (id == 4) {
              currentPage = DrawerSections.A_PROPOS;
            }
          });
        },
        child: Padding(
            padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(

               child: Icon(
               //icone
                 icon,
                 size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(flex: 3,child: Text(title, style: TextStyle(color: Colors.black,fontSize: 20,),),),
            ],
          ),
        ),
      ),
    );
  }

}


enum DrawerSections{
  STK_AMFI,
  STK_SPAA_11,
  AUTRES,
  A_PROPOS,
  HOME

}
