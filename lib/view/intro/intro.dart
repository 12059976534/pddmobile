import 'package:flutter/material.dart';
import 'package:pddmobile/view/auth/login.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: (MediaQuery.of(context).size.height),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.purple,
          ],
        )),
        child: Container(
            child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 30.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image/logo.png',
                        width: 50,
                      ),
                      Column(
                        children: [
                          Text(
                            "Portal Desa Digital",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Text(
                            "Sistem Informasi Desa Berbasis Mobile",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              height: 200,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Center(
                    child: Text(
                  "Aplikasi Portal Desa Digital merupakan aplikasi pelayanan publik desa digital yang memudahkan warga dalam melakukan pelayanan administrasi seperti pemuktahiran data, cetak surat, informasi bantuan, kirim artikel serta laporan dan aspirasi.Portal Desa Digital dikembangkan untuk menciptakan efisiensi dan percepatan pelayananan serta publikasi informasi.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Colors.black38),
                )),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    return Colors.purple[400]!;
                  },
                ),
              ),
              child: Text("LOGIN MANDIRI"),
            ),
            SizedBox(
              height: 200,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'Versi 1.0.0',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                        fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
