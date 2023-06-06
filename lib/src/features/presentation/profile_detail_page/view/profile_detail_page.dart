import 'package:firebase_fdp/src/features/presentation/profile_detail_page/view/components/avatar_view.dart';
import 'package:firebase_fdp/src/features/presentation/profile_detail_page/view/components/text_field_view.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/back_button_widget.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/headers/header_text_widget.dart';
import 'package:firebase_fdp/src/utils/styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';

class ProfileDetailPage extends StatefulWidget {
  const ProfileDetailPage({super.key});

  @override
  State<ProfileDetailPage> createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width * 0.6;
    final screenHeight = MediaQuery.of(context).size.height * 0.80;

    return Scaffold(
      backgroundColor: const Color.fromARGB(237, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        title: headerText(
          'Edit Profile',
          Colors.black,
          FontWeight.bold,
          17,
        ),
        backgroundColor: Colors.white,
        elevation: 0.1,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black, 25);
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.only(top: 5, right: 15),
              child: headerText(
                  'Done', Colors.amber.shade800, FontWeight.w500, 17),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: const EdgeInsets.only(top: 80, left: 15, right: 15),
                  width: screenWidth,
                  height: screenHeight,
                  decoration: createBoxDecorationWithShadows(
                      borderRadius: borderRadius),
                  child: Column(
                    children: [
                      Transform.translate(
                        offset: const Offset(0, -60),
                        child: const AvatarView(
                          backgroundImage: 'assets/man.png',
                        ),
                      ),
                      const TextFieldsProfileDetailView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
