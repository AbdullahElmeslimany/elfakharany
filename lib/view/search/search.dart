import 'package:elfakharany/view/item_details_page/item_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/bloc/search_cubit/search_and_filter_cubit.dart';
import '../../model_view/textfromfieldcustom.dart';

class SearchPage extends StatelessWidget {
  final id;
  const SearchPage({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameValueSearch = TextEditingController();
    final cubit = BlocProvider.of<SearchAndFilterCubit>(context);
    cubit.getAllDataProject();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            "البحث",
            style: GoogleFonts.alexandria(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.brown[500]),
          ),
        ),
      ),
      body: Form(
        key: formKey,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textFromFieldcustom(
                    backgroundAnable: true,
                    color: Colors.brown,
                    hight: 14,
                    width: MediaQuery.sizeOf(context).width - 20,
                    controller: nameValueSearch,
                    text: "البحث"),
                const Gap(13),
                Container(
                  height: 45,
                  width: MediaQuery.sizeOf(context).width - 130,
                  decoration: BoxDecoration(
                      color: Colors.brown[500],
                      borderRadius: BorderRadius.circular(13)),
                  child: MaterialButton(
                    onPressed: () {
                      cubit.filterdata(nameValueSearch.text);
                    },
                    child: Text(
                      "بحث",
                      style: GoogleFonts.alexandria(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Divider(),
                Expanded(
                  child:
                      BlocConsumer<SearchAndFilterCubit, SearchAndFilterState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      if (state is FilterState) {
                        return ListView.builder(
                          itemCount: state.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            String? image;
                            if (state.data[index]["name"] == "الايسكريم") {
                              image = "assets/images/33.jpg";
                            } else if (state.data[index]["name"] == "حلويات") {
                              image = "assets/images/11.jpg";
                            } else if (state.data[index]["name"] == "بليلة") {
                              image = "assets/images/22.jpg";
                            } else if (state.data[index]["name"] == "العصائر") {
                              image = "assets/images/44.jpg";
                            }
                            return InkWell(
                              onTap: () {
                                Get.to(DitailsItemsPage(
                                    name: state.data[index]["name"],
                                    image: image.toString(),
                                    data: state.data[index],
                                    id: id));
                              },
                              child: Container(
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        image!,
                                        height: 80,
                                        width: 80,
                                      ),
                                      const Gap(15),
                                      Text(state.data[index]["name"]),
                                    ],
                                  )),
                            );
                          },
                        );
                      }
                      return Container();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
