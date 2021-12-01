/// IMPORTING THIRD PARTY PACKAGES
import 'package:flutter/material.dart';

/// Component to rendering an avatar image asset with standard style
class ZwapAvatar extends StatelessWidget {

  /// The image widget for the avatar pic
  final Image avatarImage;

  /// Icon size inside this zwap avatar
  final double size;

  ZwapAvatar({Key? key,
    required this.avatarImage,
    this.size = 38,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: this.size,
          backgroundColor: Color(0xFFF1F1F1),
          child: CircleAvatar(
            radius: this.size,
            backgroundImage: this.avatarImage.image,
          ),
        ),
      ],
    );
  }
}
