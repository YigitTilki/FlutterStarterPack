import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:starterpack/navigationApps/navMainPage.dart';
import 'package:starterpack/navigationApps/ogrenci_detay.dart';
import 'package:starterpack/navigationApps/ogrenci_listesi.dart';
import 'package:starterpack/navigationApps/orange_page.dart';
import 'package:starterpack/navigationApps/purple_page.dart';
import 'package:starterpack/navigationApps/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? _routeOlustur(
      Widget gidilecekWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => gidilecekWidget,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android)
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => gidilecekWidget,
      );
    else
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => gidilecekWidget,
      );
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routeOlustur(NavMainPage(), settings);
      case '/orangePage':
        return _routeOlustur(OrangePage(), settings);
         case '/purplePage':
        return _routeOlustur(PurplePage(), settings);
      case '/yellowPage':
        return _routeOlustur(YellowPage(), settings);
      case '/ogrenciListesi':
        return _routeOlustur(OgrenciListesi(), settings);
      case '/ogrenciDetay':
        var parametredekiOgrenci = settings.arguments as Ogrenci;
        return _routeOlustur(
            OgrenciDetay(
              secilenOgrenci: parametredekiOgrenci,
            ),
            settings);

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text('404'),
            ),
            body: Center(
              child: Text('Sayfa Bulunamadı'),
            ),
          ),
        );
    }
  }
}
