import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starterpack/navigationApps/green_page.dart';
import 'package:starterpack/navigationApps/red_page.dart';

class NavMainPage extends StatefulWidget {
  const NavMainPage({Key? key}) : super(key: key);

  @override
  State<NavMainPage> createState() => _NavMainPageState();
}

class _NavMainPageState extends State<NavMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Islemleri'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              int? _gelenSayi = await Navigator.push<int>(
                context,
                CupertinoPageRoute(
                  builder: (redContext) => RedPage(),
                ),
              );
              print('Ana sayfadaki sayı $_gelenSayi');
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            child: Text(
              'Kırmızı Sayfaya Gir IOS',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //Navigator.push(context, route);
              Navigator.of(context)
                  .push<int>(MaterialPageRoute(builder: (context) => RedPage()))
                  .then((int? value) {
                debugPrint('Gelen sayı $value');
              });
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            child: Text(
              'Kırmızı Sayfaya Gir Android',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            child: Text(
              'Maybe Pop Kullanımı',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (Navigator.canPop(context)) {
                print("evet pop olabilir");
              } else
                print('hayır olamaz');
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            child: Text(
              'Can Pop Kullanımı',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => GreenPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            child: Text(
              'Push Replacament Kullanımı',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).pushNamed(routeName);
              Navigator.pushNamed(context, '/orangePage');
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue.shade600),
            child: Text(
              'PushNamed Kullanımı',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).pushNamed(routeName);
              Navigator.pushNamed(context, '/yellowPage');
            },
            style: ElevatedButton.styleFrom(primary: Colors.yellow.shade600),
            child: Text(
              'PushNamed Kullanımı Yellow',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/ogrenciListesi', arguments: 80);
            },
            style: ElevatedButton.styleFrom(primary: Colors.orange.shade600),
            child: Text(
              'Liste Olustur',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/purplePage');
            },
            style: ElevatedButton.styleFrom(primary: Colors.purple.shade600),
            child: Text(
              'Mor Sayfaya Git',
            ),
          ),
        ],
      )),
    );
  }
}