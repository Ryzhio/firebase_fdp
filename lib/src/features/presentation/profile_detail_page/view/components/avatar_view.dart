import 'package:firebase_fdp/src/utils/styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';

@immutable
class AvatarView extends StatelessWidget {
  final String backgroundImage;

  const AvatarView({super.key, required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 142,
          height: 142,
          decoration: createBoxDecorationWithShadows(
              borderRadius: BorderRadius.circular(65)),
          child: CircleAvatar(backgroundImage: AssetImage(backgroundImage)),
        ),
        Transform.translate(
          offset: const Offset(0, -35),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(20)),
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 20,
            ),
          ),
        )
      ],
    );
  }
}
