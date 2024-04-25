import 'package:elfakharany/view/item_details_page/helper/button_add_custom.dart';
import 'package:elfakharany/view/item_details_page/helper/exstantion_Items.dart';
import 'package:elfakharany/view/item_details_page/helper/imageCustom.dart';
import 'package:elfakharany/view/item_details_page/helper/name_and_detials.dart';
import 'package:elfakharany/view/item_details_page/helper/size_item.dart';
import 'package:flutter/material.dart';

class DitailsItemsPage extends StatelessWidget {
  final String name;
  final String image;
  final data;
  final id;
  const DitailsItemsPage(
      {super.key,
      required this.name,
      required this.image,
      required this.data,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                imageCustom(image),
                nameAndDetails(name),
                sizeItem(context, data: data),
                extantionItems(context),
                buttonCastomAdd(context, name, data: data, id: id)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
