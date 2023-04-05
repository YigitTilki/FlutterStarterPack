import 'package:flutter/material.dart';
import 'package:starterpack/BasicApps/columnRowBasics.dart';
import 'dart:math' as math;

class CollapseToolBarEx extends StatelessWidget {
  const CollapseToolBarEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 300,
          floating: false,
          pinned: true, //aşağı kaydırıldığında title gözükmesini sağlar
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Custom ScrolView App"),
            centerTitle: true,
            background: Image.asset(
              "assets/images/indir.jfif",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverList(
            delegate: SliverChildListDelegate(listElements),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                  _dinamikElemanUretenFonksiyon,
                  childCount: 6)),
        ),
        SliverFixedExtentList(
            //preformanslı çalışması için bu widget daha iyi
            delegate: SliverChildListDelegate(listElements),
            itemExtent: 100),
        SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6),
            itemExtent: 50),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 6),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
        SliverGrid.count(
          crossAxisCount: 3,
          children: listElements,
        ),
        SliverGrid.extent(
          maxCrossAxisExtent: 300,
          children: listElements,
        )
      ],
    );
  }

  List<Widget> get listElements {
    return [
      containerOlustur("ListElement 1", createRandomColor(), height: 100),
      containerOlustur("ListElement 2", createRandomColor(), height: 100),
      containerOlustur("ListElement 3", createRandomColor(), height: 100),
      containerOlustur("ListElement 4", createRandomColor(), height: 100),
      containerOlustur("ListElement 5", createRandomColor(), height: 100),
      containerOlustur("ListElement 6", createRandomColor(), height: 100),
    ];
  }

  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return containerOlustur(
      "Dynamic List Element ${index + 1}",
      createRandomColor(),
      height: 100,
    );
  }
}

Color createRandomColor() {
  return Color.fromRGBO(math.Random().nextInt(255), math.Random().nextInt(255),
      math.Random().nextInt(255), 1);
}
