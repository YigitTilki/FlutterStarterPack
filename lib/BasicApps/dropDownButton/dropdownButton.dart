import 'package:flutter/material.dart';
import 'Countries.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String? _secilenSehir = null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Şehir Seçiniz"), //Seçimden önceki yazı
        items: countries
            .map( //tüm listeyi gezer ve string listeye dönüştürür
              (String oAnkiSehirler) => DropdownMenuItem(
                child: Text(oAnkiSehirler),
                value: oAnkiSehirler,
              ),
            )
            .toList(),
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            //Değerin değişemesi için gerekli
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}
