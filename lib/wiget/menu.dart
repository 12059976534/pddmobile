import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: GridView.extent(
          maxCrossAxisExtent: 400,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(top: 20),
                      child: Image.network(
                          "http://www.iainpare.ac.id/wp-content/uploads/2020/06/images2.png"),
                    ),
                    Text("Berita")
                  ],
                ),
                elevation: 5,
              ),
            ),
            Container(
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(top: 20),
                      child: Image.network(
                          "https://png.pngtree.com/png-vector/20190418/ourlarge/pngtree-vector-letter-icon-png-image_952503.jpg"),
                    ),
                    Text("Surat")
                  ],
                ),
                elevation: 5,
              ),
            ),
            Container(
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(top: 20),
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ07ZGAlIFGi2oK3MtVCJH1W9V5Ejr7Sz43sJWhzXwCeXyzADGB9jI_gcFP8FlnBHlN2o&usqp=CAU"),
                    ),
                    Text("Agenda")
                  ],
                ),
                elevation: 5,
              ),
            ),
            Container(
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(top: 20),
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQU7uXdpZ9T5cXnHssx22SfPjHGk-r0591XgUWD5TUK-OmSwKndgnb0cs6p3YGuVldh1g&usqp=CAU"),
                    ),
                    Text("Info Bantuan")
                  ],
                ),
                elevation: 5,
              ),
            ),
          ]),
    );
  }
}
