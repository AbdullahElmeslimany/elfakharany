import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/bloc/search_cubit/search_and_filter_cubit.dart';
import '../../model_view/textfromfieldcustom.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
                    listener: (context, state) {
                      // TODO: implement listener
                    },
                    builder: (context, state) {
                      if (state is FilterState) {
                        return ListView.builder(
                          itemCount: state.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Text(state.data[index]["name"]);
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
