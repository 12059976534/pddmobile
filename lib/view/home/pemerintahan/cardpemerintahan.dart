import 'package:flutter/material.dart';
import 'package:pddmobile/view/home/pemerintahan/cardmodel.dart';

class Cardpemerintahan extends StatefulWidget {
  @override
  _CardpemerintahanState createState() => _CardpemerintahanState();
}

class _CardpemerintahanState extends State<Cardpemerintahan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.50,
      height: MediaQuery.of(context).size.height * 0.40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Cardmodel("Moh Afifudin", "KEPALA DESA",
              "https://www.desapaokmotong.id/desa/upload/user_pict/UAOgdS_apip.jpg"),
          Cardmodel("Dedi ependi", "SEKRETARIS DESA",
              "https://www.desapaokmotong.id/desa/upload/user_pict/zDRua6_KADUS-TUNJANG-UTARA.jpg"),
          Cardmodel("huzaemah", "KASI KEUANGAN",
              "https://www.desapaokmotong.id/desa/upload/user_pict/iRTUaE_nani-huzaimah2.jpg")
        ],
      ),
    );
  }
}
