import 'package:flutter/material.dart';
import 'package:clothes_store_uts/constants.dart';

import 'featurred_clothes.dart';
import 'header_with_seachbox.dart';
import 'recomend_clothes.dart';
import 'title_with_more_bbtn.dart';

// kita membuat class baru yang merupakan stateless widget untuk menkonfigurasi recomended dengan featured clothes
// lalu kita membuat widget baru dengan mengoverride agar tidak tertumpuk dengan class sebelumnya
// lalu kita konfigurasi size dengan dengan mengambil informasi ukuran layar dengan media query
// lalu kita membuat singlechildscrollview agar widget dapat tampil saat digulirkan kebawah
// lalu barulah kita membuat tulisan recomended dan featured clothes dengan tombol yang bisa ditekan

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          Recomendsclothes(),
          TitleWithMoreBtn(title: "Featured clothes", press: () {}),
          Featuredclothes(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
