import 'package:firebase_fdp/src/features/domain/entities/logisticos/logisticos_entity.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/logisticos_card/logisticos_card_widget.dart';
import 'package:flutter/material.dart';

class LogisticosView extends StatelessWidget {
  //DEPENDENCIAS
  List<LogisticosDetailEntity> logisticos = [];

  LogisticosView({super.key, required this.logisticos});

  @override
  Widget build(BuildContext context) {
    return logisticos.isEmpty
        ? Container(
            height: 20,
          )
        : Column(
            children: [
              LogisticosCardWidget(logisticos: logisticos),
            ],
          );
  }
}
