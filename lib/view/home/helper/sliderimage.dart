import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

imageSlider() {
  List<String> imagelist = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
  ];
  return FadeInLeftBig(
    child: Container(
      margin: EdgeInsets.only(top: 10),
      child: CarouselSlider(
        items: imagelist.map((index) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(index, fit: BoxFit.fill, width: 300)));
            },
          );
        }).toList(),
        options: CarouselOptions(
          autoPlayAnimationDuration: const Duration(seconds: 3),
          autoPlay: true,
          height: 160.0,
          autoPlayInterval: const Duration(seconds: 7),
        ),
      ),
    ),
  );
}
