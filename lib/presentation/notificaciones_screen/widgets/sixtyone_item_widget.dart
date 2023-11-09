import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';

// ignore: must_be_immutable
class SixtyoneItemWidget extends StatelessWidget {
  const SixtyoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            "Envío de reporte mensual",
            style: CustomTextStyles.bodyLargeInterBlack90017,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage33,
          height: 21.v,
          width: 25.h,
        ),
      ],
    );
  }
}
