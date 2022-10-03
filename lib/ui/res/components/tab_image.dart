// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../app_string.dart';

class TabImage extends StatelessWidget {
  const TabImage({
    Key? key,
    required this.height,
    required this.width,
    required this.imageUrl,
  }) : super(key: key);

  final double height;
  final double width;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => Container(
        margin: const EdgeInsets.only(right: 10, bottom: 10),
        height: height * .35,
        width: width * .4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      imageUrl: imageUrl,
    );
  }
}
