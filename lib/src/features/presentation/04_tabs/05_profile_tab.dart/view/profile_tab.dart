import 'package:firebase_fdp/src/features/presentation/states_providers/loading_status_state_provider.dart';
import 'package:firebase_fdp/src/features/presentation/04_tabs/05_profile_tab.dart/model/profile_tab_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/01_welcome_page/view/welcome_screen.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/rounded_button.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/alerts/alert_dialog.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/headers/header_text_widget.dart';
import 'package:firebase_fdp/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class PerfilTab extends StatefulWidget {
  const PerfilTab({super.key});

  @override
  State<PerfilTab> createState() => _PerfilTabState();
}

class _PerfilTabState extends State<PerfilTab> {
  //Dependencias
  final ProfileTabViewModel _viewModel;

  _PerfilTabState({ProfileTabViewModel? viewModel})
      : _viewModel = viewModel ?? DefaultProfileTabViewModel();
  //

  @override
  Widget build(BuildContext context) {
    //Inicializamos el viewModel
    _viewModel.initState(
        loadingState: Provider.of<LoadingStateProvider>(context));

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'perfild');
                },
                child: _header(),
              ),
              _contentProfile(context),
            ],
          ),
        ]))
      ],
    ));
  }

  Widget _header() {
    return Container(
      height: 250,
      color: Colors.black12,
      padding: const EdgeInsets.all(50),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/man.png',
            ),
            radius: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    headerText(
                        'Ricardo Llacsa', Colors.black, FontWeight.w600, 20),
                    const Icon(
                      Icons.chevron_right,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              Container(),
            ],
          )
        ],
      ),
    );
  }

  Widget _contentProfile(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            leading: const Image(
              image: AssetImage('assets/noti.png'),
              width: 29,
              height: 29,
            ),
            title: headerText(
              'Notifications',
              Colors.black,
              FontWeight.w500,
              15,
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/settingicon.png'),
              width: 29,
              height: 29,
            ),
            title: headerText(
              'Settings',
              Colors.black,
              FontWeight.w500,
              15,
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black54,
            ),
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/helpicon.png'),
              width: 29,
              height: 29,
            ),
            title: headerText(
              'Help Center',
              Colors.black,
              FontWeight.w500,
              15,
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black54,
            ),
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/abouticon.png'),
              width: 29,
              height: 29,
            ),
            title: headerText(
              'About Us',
              Colors.black,
              FontWeight.w500,
              15,
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black54,
            ),
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/logout.png'),
              width: 29,
              height: 29,
            ),
            title: const Text(
              'Logout',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black54,
            ),
            onTap: () => _signOut(context),
          )
        ],
      ),
    );
  }

  Future _signOut(BuildContext context) async {
    showAlertDialog(
      context,
      const AssetImage('assets/logout.png'),
      'Cierre de sesión en curso',
      '¿Desea salir de la sesión actual?',
      'Done',
      createButton(
        labelButton: 'Cerrar Sesión',
        color: Colors.amber.shade800,
        func: () {
          _viewModel.signOut().then((_) {
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => const WelcomeScreen(),
                transitionDuration: const Duration(seconds: 0),
              ),
            );
          });
          // Get.offNamed(GetRoutes.welcome);
        },
      ),
    );
  }
}
