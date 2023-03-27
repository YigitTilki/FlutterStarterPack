import 'package:flutter/material.dart';

class imageExample extends StatefulWidget {
  const imageExample({Key? key}) : super(key: key);

  @override
  State<imageExample> createState() => _imageExampleState();
}

class _imageExampleState extends State<imageExample> {
  String _imgURL =
      'https://chipandco.com/ezoimgfmt/eecjv6oezjo.exactdn.com/wp-content/uploads/2021/06/Screen-Shot-2021-06-04-at-11.08.09-AM-2048x1146.png?ezimgfmt=ng%3Awebp%2Fngcb3%2Frs%3Adevice%2Frscb3-1&lossy=1&ssl=1&strip=all';
  String _imgURL2 =
      'https://www.gannett-cdn.com/-mm-/974bcdb2ceb8ff8c15db75a5dfab567633383a34/c=0-93-3068-1826/local/-/media/2017/03/01/USATODAY/USATODAY/636239782868557609-MAG-HAYDEN-7730471.JPG?width=660&height=373&fit=crop&format=pjpg&auto=webp';

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Star Wars Klon Savaşları")),
        ),
        body: Center(
          child: Column(
            children: [
              IntrinsicHeight( //resimlerin taşmamasını aynı düzende kalmasını telefon çevrilse dahi düzende olmasını sağlayan bir widget
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch, //IntrinsicHeight widgetının çalışması için önemli
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        width: 300,
                        height: 100,
                        child: Image.asset(
                          'assets/images/indir.jfif',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        width: 300,
                        height: 100,
                        child: Image.network(
                          _imgURL,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        width: 300,
                        height: 100,
                        child: Image.asset(
                          'assets/images/obiWan.jfif',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              FadeInImage.assetNetwork( //İnternetten çektiğimiz fotoğrafın yüklenmesi uzun sürebilir bazen ve o yüklenmeden gelen bir gif tuttuk
                  placeholder: 'assets/images/cargando-loading.gif',
                  image: _imgURL2)
            ],
          ),
        ),
      ),
    );
  }
}
