import 'package:elfakharany/view/home/helper/appbar_homepage.dart';
import 'package:elfakharany/view/home/helper/categorise_items.dart';
import 'package:elfakharany/view/home/helper/gridview_bestsale.dart';
import 'package:elfakharany/view/home/helper/sliderimage.dart';
import 'package:elfakharany/view/info/info.dart';
import 'package:elfakharany/view/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../profile/profile.dart';
import '../login_signup/login.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class HomePage extends StatelessWidget {
  final uID;
  const HomePage({super.key, this.uID});

  @override
  Widget build(BuildContext context) {
    List<Map> items = [
      {
        "name": "الحلويات",
        "image": "assets/images/11.jpg",
        "priceL": "300",
        "priceM": "280",
        "priceS": "220"
      },
      {
        "name": "البليلة",
        "image": "assets/images/22.jpg",
        "priceL": "80",
        "priceM": "65",
        "priceS": "55"
      },
      {
        "name": "الايسكريم",
        "image": "assets/images/33.jpg",
        "priceL": "40",
        "priceM": "30",
        "priceS": "25"
      },
      {
        "name": "العصائر",
        "image": "assets/images/44.jpg",
        "priceL": "100",
        "priceM": "75",
        "priceS": "60"
      },
    ];
    return Scaffold(
      key: scaffoldKey,
      // appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            const Gap(30),
            // ListTile(
            //   onTap: () {},
            //   leading: Icon(
            //     Icons.add_circle_rounded,
            //     size: 27,
            //     color: Colors.blue[700],
            //   ),
            //   title: const Text(
            //     "اضافة منتج",
            //     style: TextStyle(
            //       fontSize: 17,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            const Gap(20),
            ListTile(
              onTap: () {
                Get.to(() => ProfilePage(
                      id: uID,
                    ));
              },
              leading: Icon(
                Icons.account_box_rounded,
                size: 28,
                color: Colors.amber[700],
              ),
              title: const Text(
                "معلومات الحساب",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(20),
            ListTile(
              onTap: () {
                Get.to(const InfoPage());
              },
              leading: Icon(
                Icons.contact_phone_rounded,
                size: 27,
                color: Colors.green[700],
              ),
              title: const Text(
                "طرق التواصل",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(20),
            ListTile(
              onTap: () {
                Get.offAll(const LoginPage());
              },
              leading: const Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              title: const Text(
                "تسجيل خروج",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBarCustom(id: uID),
                searchFieldCustom(id: uID),
                imageSlider(),
                categoriseItems(items),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "الاكثر طلبا",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Expanded(
                  child: gridviewMoreSales(items, uID),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// aa@a.com
//123123