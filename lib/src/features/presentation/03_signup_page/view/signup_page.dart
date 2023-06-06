// import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/back_button_widget.dart';
// import 'package:firebase_fdp/src/features/presentation/widgets/TextFormField/custom_text_formfield.dart';
// import 'package:firebase_fdp/src/features/presentation/widgets/headers/header_text_widget.dart';
// import 'package:firebase_fdp/src/routes/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SignUpPage extends StatelessWidget with TextFormFieldDelegate {
//   const SignUpPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           leading: Builder(builder: (BuildContext context) {
//             return backButton(context, Colors.black);
//           }),
//         ),
//         body: CustomScrollView(
//           slivers: [
//             SliverList(
//                 delegate: SliverChildListDelegate([
//               Center(
//                   child: Form(
//                 key: GlobalKey<FormState>(),
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 child: Container(
//                   padding: const EdgeInsets.all(30),
//                   child: Column(
//                     children: [
//                       headerText2('Create an Account', Colors.black, 25),
//                       const SizedBox(
//                         height: 40,
//                       ),
//                       CustomTextFormField(
//                         textFormFieldType: CustomTextFormFieldType.username,
//                         hintext: 'Username',
//                         delegate: this,
//                       ),
//                       CustomTextFormField(
//                         textFormFieldType: CustomTextFormFieldType.email,
//                         hintext: 'Email',
//                         delegate: this,
//                       ),
//                       CustomTextFormField(
//                         textFormFieldType: CustomTextFormFieldType.phone,
//                         hintext: 'Phone',
//                         delegate: this,
//                       ),
//                       GestureDetector(
//                         child: AbsorbPointer(
//                           child: CustomTextFormField(
//                             textFormFieldType: CustomTextFormFieldType.username,
//                             hintext: 'Date of Birth',
//                             delegate: this,
//                           ),
//                         ),
//                       ),
//                       CustomTextFormField(
//                         textFormFieldType: CustomTextFormFieldType.password,
//                         hintext: 'Password',
//                         delegate: this,
//                       ),
//                       _signUpBotton(context),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 20, vertical: 40),
//                         child: const Text(
//                           'By clicking up you agree to the following Terms and Conditions',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w400,
//                               fontSize: 13),
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Get.toNamed(GetRoutes.forgot);
//                         },
//                         child: Text(
//                           'Forgot password?',
//                           style: TextStyle(
//                             color: Colors.black.withOpacity(.8),
//                             fontSize: 14,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               )),
//             ]))
//           ],
//         ));
//   }

//   @override
//   onChanged(
//       {required String newValue,
//       required CustomTextFormFieldType customTextFormFieldType}) {
//     print(newValue);
//   }
// }

// Widget _signUpBotton(BuildContext context) {
//   return Container(
//     width: 370,
//     height: 45,
//     margin: const EdgeInsets.only(top: 40),
//     child: MaterialButton(
//       onPressed: () {},
//       color: Colors.amber.shade800,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: const Text(
//         'Sign Up',
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 17,
//         ),
//       ),
//     ),
//   );
// }
