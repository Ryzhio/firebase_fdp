import 'package:firebase_fdp/src/features/presentation/04_tabs/04_campaign_tab.dart/view/campaign_tab.dart';
import 'package:firebase_fdp/src/features/presentation/04_tabs/05_profile_tab.dart/view/profile_tab.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  final List<Widget> _widgetOptions = [
    const CampaingTab(),
    const PerfilTab(),
  ];

  int _selectedItemIndex = 0;

  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 33,
      selectedItemColor: Colors.amber.shade800,
      unselectedItemColor: Colors.black54,
      currentIndex: _selectedItemIndex,
      onTap: _cambiarWidget,
      showUnselectedLabels: true,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          label: 'Profile',
        ),
      ],
    );
  }
}



// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:firebase_fdp/src/features/presentation/tabs/campaings_tab.dart/view/campaing_tab.dart';
// import 'package:firebase_fdp/src/features/presentation/tabs/profile_tab.dart/view/profile_tab.dart';
// import 'package:flutter/material.dart';

// class TabsPage extends StatefulWidget {
//   const TabsPage({super.key});

//   @override
//   State<TabsPage> createState() => _TabsPageState();
// }

// class _TabsPageState extends State<TabsPage> {
//   List Menuu = [
//     const CampaingTab(),
//     const PerfilTab(),
//   ];
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       bottomNavigationBar: CurvedNavigationBar(
//         index: _selectedIndex,
//         backgroundColor: Colors.transparent,
//         color: Colors.black38,
//         animationDuration: const Duration(milliseconds: 300),
//         items: const [
//           Icon(
//             Icons.home,
//             size: 30,
//             color: Colors.white,
//           ),
//           Icon(
//             Icons.person,
//             size: 30,
//             color: Colors.white,
//           ),
//         ],
//         onTap: (index) {
//           setState(
//             () {
//               _selectedIndex = index;
//             },
//           );
//         },
//       ),
//       body: Menuu[_selectedIndex],
//     );
//   }
// }
