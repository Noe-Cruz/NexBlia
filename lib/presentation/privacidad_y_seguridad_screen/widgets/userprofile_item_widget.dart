import 'package:flutter/material.dart';
import 'package:nexblia/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 21.v,
          width: 199.h,
          margin: EdgeInsets.only(top: 1.v),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Mostrar mi Foto de Perfil",
                  style: CustomTextStyles.bodyLargeInterBlack90017,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Mostrar mi Foto de Perfil",
                  style: CustomTextStyles.bodyLargeInterBlack90017,
                ),
              ),
            ],
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
