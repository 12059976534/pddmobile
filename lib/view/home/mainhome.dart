import 'package:flutter/material.dart';
import 'package:pddmobile/view/home/pemerintahan/cardpemerintahan.dart';
import 'package:pddmobile/wiget/crousel.dart';
import 'package:pddmobile/wiget/menu.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(4),
          child: SizedBox(
              height: 220.0,
              width: 350.0,
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Carousel(
                  onImageTap: (hh) {
                    print(hh);
                  },
                  images: [
                    NetworkImage(
                        'https://www.portaldesadigital.id/desa/upload/artikel/portal_desa_digital.jpg'),
                    NetworkImage(
                        'https://www.portaldesadigital.id/desa/upload/dokumen/gambar/Portal+Desa+Digital+Versi+1.0.3+Full+Installer_v2D409_Screenshot_54.jpg'),
                    NetworkImage(
                        'https://www.portaldesadigital.id/desa/upload/artikel/sedang_1568520644_banner_rilis_1.0.1.jpg'),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.purple,
                  indicatorBgPadding: 5.0,
                  borderRadius: true,
                  boxFit: BoxFit.fill,
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text(
              "Menu Layanan",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  color: Colors.black38),
            ),
          ),
        ),
        Menu(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text(
              "Pemerintahan Desa",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  color: Colors.black38),
            ),
          ),
        ),
        Cardpemerintahan()
      ],
    );
  }
}
