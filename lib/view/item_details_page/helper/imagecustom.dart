import 'package:flutter/material.dart';

imageCustom(image) {
  return Hero(
    tag: image,
    child: ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        child: Image.asset(image)),
  );
}
