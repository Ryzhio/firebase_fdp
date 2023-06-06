import 'package:firebase_fdp/src/features/presentation/states_providers/loading_status_state_provider.dart';
import 'package:firebase_fdp/src/features/presentation/04_tabs/05_profile_tab.dart/model/profile_tab_view_model.dart';
import 'package:firebase_fdp/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class PerfilScreen extends StatefulWidget {
  const PerfilScreen({super.key});

  @override
  State<PerfilScreen> createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  //Dependencias
  final ProfileTabViewModel _viewModel;

  _PerfilScreenState({ProfileTabViewModel? viewModel})
      : _viewModel = viewModel ?? DefaultProfileTabViewModel();
  //

  Widget userInfoItemProfile(IconData iconData, String userData) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.orange.shade300,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 30,
            color: Colors.black,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            userData,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Inicializamos el viewModel
    _viewModel.initState(
        loadingState: Provider.of<LoadingStateProvider>(context));

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                'assets/man.png',
                width: 240,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            userInfoItemProfile(Icons.person, "Cesar Morocho Marchan"),
            const SizedBox(
              height: 30,
            ),
            userInfoItemProfile(Icons.email, "cesar_moromarfp@gmail.com"),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Material(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Logout?"),
                        content: const Text("Are you are you want to logout?"),
                        actions: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "Cancel",
                                style: TextStyle(color: Colors.white),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                              onPressed: () async {
                                // _signOut(context);
                                Navigator.pushNamed(context, 'welcome');
                              },
                              child: const Text(
                                "Confirm",
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(32),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.logout_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
