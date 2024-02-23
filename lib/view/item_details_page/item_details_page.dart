import 'package:elfakharany/view/item_details_page/helper/button_add_custom.dart';
import 'package:elfakharany/view/item_details_page/helper/exstantion_Items.dart';
import 'package:elfakharany/view/item_details_page/helper/imageCustom.dart';
import 'package:elfakharany/view/item_details_page/helper/name_and_detials.dart';
import 'package:elfakharany/view/item_details_page/helper/size_item.dart';
import 'package:flutter/material.dart';

class DitailsItemsPage extends StatelessWidget {
  final String name;
  final String image;
  const DitailsItemsPage({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    List<String> buttonList = ["L", "M", "S"];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                imageCustom(image),
                nameAndDetails(name),
                sizeItem(context, buttonList),
                extantionItems(context),
                buttonCastomAdd(context, name)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
