import 'package:elfakharany/view/home/helper/appbar_homepage.dart';
import 'package:elfakharany/view/home/helper/categorise_items.dart';
import 'package:elfakharany/view/home/helper/gridview_bestsale.dart';
import 'package:elfakharany/view/home/helper/sliderimage.dart';
import 'package:elfakharany/view/search_page/search_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> items = [
      {"name": "الحلويات", "image": "assets/images/1.jpg"},
      {"name": "البليلة", "image": "assets/images/2.jpg"},
      {"name": "الايسكريم", "image": "assets/images/3.jpg"},
      {"name": "العصائر", "image": "assets/images/4.jpg"},
    ];
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBarCustom(),
                searchFieldCustom(),
                imageSlider(),
                categoriseItems(items),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "الاكثر طلبا",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Expanded(
                  child: gridviewMoreSales(items),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
