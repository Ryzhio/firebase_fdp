import 'package:firebase_fdp/src/features/domain/entities/containers/container_list_entity.dart';
import 'package:firebase_fdp/src/features/presentation/10_containers_page/view/container_page.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_material.dart';
import 'package:flutter/material.dart';

class ContainerListCardView extends StatelessWidget {
  final ContainerListDetailEntity containerListDetailEntity;

  const ContainerListCardView({
    super.key,
    required this.containerListDetailEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: Colors.white)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              containerMaterial(
                funci: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContainerPage()));
                },
                context: context,
                titlee: 'CONTENEDORES',
                colorText: Colors.white,
                images: const AssetImage('assets/contenedores.jpg'),
                iconic: Icons.analytics_outlined,
                colorCont: Colors.white,
                descripValue: containerListDetailEntity.container,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              containerMaterial(
                  funci: () {
                    Navigator.pushNamed(context, 'client');
                  },
                  context: context,
                  titlee: 'CLIENTES',
                  colorText: Colors.white,
                  images: const AssetImage('assets/clientes.png'),
                  iconic: Icons.align_vertical_bottom,
                  colorCont: Colors.white,
                  descripValue: containerListDetailEntity.clientes),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              containerMaterial(
                  funci: () {
                    Navigator.pushNamed(context, 'lineasnavi');
                  },
                  context: context,
                  titlee: 'LINEAS NAVIERAS',
                  colorText: Colors.white,
                  images: const AssetImage('assets/navieras.jpg'),
                  iconic: Icons.analytics_outlined,
                  colorCont: Colors.white,
                  descripValue: containerListDetailEntity.navieras),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              containerMaterial(
                funci: () {
                  Navigator.pushNamed(context, 'op');
                },
                context: context,
                titlee: 'OPERADORES\n LOGISTICOS',
                colorText: Colors.white,
                images: const AssetImage('assets/opl.jpg'),
                iconic: Icons.analytics_outlined,
                colorCont: Colors.white,
                descripValue: containerListDetailEntity.logisticos,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
