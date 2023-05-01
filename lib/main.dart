import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:starterpack/BasicApps/basicButtons.dart';
import 'package:starterpack/List&Scroll/Example1/card_listTile.dart';
import 'package:starterpack/BasicApps/columnRowBasics.dart';
import 'package:starterpack/BasicApps/counterPage.dart';
import 'package:starterpack/BasicApps/dropdownButton.dart';
import 'package:starterpack/BasicApps/imageWidget.dart';
import 'package:starterpack/BasicApps/popupMenu.dart';
import 'package:starterpack/List&Scroll/Example2/listView.dart';
import 'package:starterpack/List&Scroll/Example2/listViewLayoutProblemleri.dart';
import 'package:starterpack/List&Scroll/Example3/customScrollView&slivers.dart';
import 'package:starterpack/List&Scroll/Example3/gridViewClass.dart';
import 'package:starterpack/List&Scroll/easyLoading.dart';
import 'package:starterpack/navigationApps/navMainPage.dart';
import 'package:starterpack/navigationApps/ogrenci_detay.dart';
import 'package:starterpack/navigationApps/orange_Page.dart';
import 'package:starterpack/navigationApps/red_page.dart';
import 'package:starterpack/navigationApps/yellow_page.dart';

import 'navigationApps/routeGenerator.dart';

void main() {
  runApp(MyApp());
  configLoading();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      //home: AnaSayfa(),
      /* routes: {
        '/redPage': (context) => RedPage(),
        '/ogrenciDetay' : (context)=>OgrenciDetay()
        '/' : (context)=>AnaSayfa(),
        '/orangePage': (context)=>OrangePage(),
      },
      
      onUnknownRoute: (settings)=> MaterialPageRoute(builder: (context)=>Scaffold(
        appBar: AppBar(title: Text('Error'),),
        body: Center(child: Text('404'),),
      )), */
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}



/*theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      Scaffold(
        appBar: AppBar(),
        body: PopupMenu(),
      ),*/