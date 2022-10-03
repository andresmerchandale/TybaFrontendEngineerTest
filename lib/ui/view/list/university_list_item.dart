import 'package:flutter/material.dart';
import 'package:testapp/ui/res/components/tab_image.dart';

import '../../../data/models/universities_model.dart';
import '../../res/app_color.dart';
import '../../res/components/not_avaible_photo.dart';

class UniversityListItem extends StatelessWidget {
  final University university;
  const UniversityListItem({
    Key? key,
    required this.university,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Stack(children: [
          'https://image.shutterstock.com/image-photo/image-260nw-1253570536.jpg'
                  .isEmpty
              ? const NotAvaiblePhoto(
                  height: 20,
                  width: 20,
                )
              : TabImage(
                  height: height,
                  width: width,
                  imageUrl:
                      'https://image.shutterstock.com/image-photo/image-260nw-1253570536.jpg'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Container(
              height: height * .06,
              width: width * .37,
              decoration: BoxDecoration(
                color: AppColors.redColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                  child: Text(
                "${university.name}",
                style: const TextStyle(
                  color: AppColors.whiteColor,
                ),
              )),
            ),
          )
        ]),
      ],
    );
  }
}
