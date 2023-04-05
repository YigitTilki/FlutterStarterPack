import 'package:flutter/material.dart';
import 'package:starterpack/BasicApps/columnRowBasics.dart';

class GridViewEx extends StatelessWidget {
  const GridViewEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.builder(
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.orange,
                      offset: Offset(5.0, 5.0),
                      blurRadius: 20.0),
                ],
                shape: BoxShape.circle,
                border: Border.all(color: Colors.orange, width: 5),
                color: Colors.teal[(100 * (index % 8) + 100)],
                gradient: LinearGradient(
                    //geçişli renk verme
                    colors: [Colors.purple, Colors.yellow, Colors.pinkAccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                image: DecorationImage(
                    image: AssetImage("assets/images/indir.jfif"),
                    alignment: Alignment.topCenter),
              ),
              margin: EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Flutter ${index + 1}",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            onTap: () => debugPrint("Welcome Number ${index + 1}"),
          );
        },
      ),
    );
  }

  GridView gridViewExtend() {
    return GridView.extent(
      maxCrossAxisExtent: 100, //her bir elemanın max büyüklüğünü ayarlar
      primary:
          false, //kaydırmanın sonuna geldiğini başka kayma olmayacağını belirtir
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        containerOlustur("1", Colors.teal),
        containerOlustur("2", Colors.teal),
        containerOlustur("3", Colors.teal),
        containerOlustur("4", Colors.teal),
        containerOlustur("5", Colors.teal),
        containerOlustur("6", Colors.teal),
        containerOlustur("7", Colors.teal),
        containerOlustur("8", Colors.teal),
      ],
    );
  }

  GridView gridViewCount() {
    return GridView.count(
      crossAxisCount: 4,
      scrollDirection: Axis
          .horizontal, //aşağı doğru kayan uygulamayı sağa doğru kaydırmaya yarar
      primary:
          false, //kaydırmanın sonuna geldiğini başka kayma olmayacağını belirtir
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        containerOlustur("1", Colors.teal),
        containerOlustur("2", Colors.teal),
        containerOlustur("3", Colors.teal),
        containerOlustur("4", Colors.teal),
        containerOlustur("5", Colors.teal),
        containerOlustur("6", Colors.teal),
        containerOlustur("7", Colors.teal),
        containerOlustur("8", Colors.teal),
      ],
    );
  }
}
