import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/filter_page/view/list_client.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/headers/header_text_widget.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool E = false;
  bool expGroupLl = false;
  bool valladolidGroup = false;
  bool agroGroup = false;

//
  bool openNow = false;
  bool creditshow = false;
  bool costHigh = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: headerText3(
          'FILTERS',
          Colors.black,
          FontWeight.w600,
        ),
        leading: Container(
          padding: const EdgeInsets.only(top: 25, left: 10),
          child: headerText(
            'Reset',
            Colors.black,
            FontWeight.w500,
            17,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.only(top: 20, right: 10),
              child: headerText(
                'Done',
                Colors.amber,
                FontWeight.w500,
                17,
              ),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 15, bottom: 15, left: 15),
                  child: headerText(
                    'CLIENTES FINALES',
                    Colors.black26,
                    FontWeight.w600,
                    17,
                  ),
                ),
                _shortByContainer()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _shortByContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          ListClient(
            texto: 'EXP GROUP LL',
            isActive: expGroupLl,
            func: () {
              setState(() => expGroupLl = !expGroupLl);
            },
          ),
        ],
      ),
    );
  }
}
