import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/managers/container_manager/decodables/container_list_decodable.dart';
import 'package:firebase_fdp/src/managers/container_manager/interfaces/container_manager_interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';

class DefaultContainersManager extends ContainerManager {
  final String _containerListPath = "containerList";
  //Dependencias
  final RealtimeDatabaseService _realtimeDatabaseService;

  DefaultContainersManager({RealtimeDatabaseService? realtimeDatabaseService})
      : _realtimeDatabaseService =
            realtimeDatabaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<ContainerListDecodable> fetchContainerList() async {
    try {
      final response =
          await _realtimeDatabaseService.getData(path: _containerListPath);
      ContainerListDecodable decodable =
          _mapToContainerListDecodable(response: response);
      return decodable;
    } on Failure catch (f) {
      return Future.error(f);
    }
  }

  @override
  Future<ContainerListDecodable> fetchPopularContainerList() async {
    final fullContainerList = await fetchContainerList();
    fullContainerList.containerList = _mapPopularContainerList(
        containerList: fullContainerList.containerList ?? []);
    return fullContainerList;
  }

  @override
  Future<ContainerListDecodable> fetchContainerListByCategory(
      {required int categoryId}) async {
    final fullContainerList = await fetchContainerList();
    fullContainerList.containerList = _mapContainerListByCategory(
        containerList: fullContainerList.containerList ?? [],
        categoryId: categoryId);
    return fullContainerList;
  }
}

extension Mappers on DefaultContainersManager {
  ContainerListDecodable _mapToContainerListDecodable(
      {required Map<String, dynamic> response}) {
    List<ContainerList> containerList = [];
    response.forEach((key, value) {
      containerList.add(ContainerList.fromMap(value));
    });
    return ContainerListDecodable(containerList: containerList);
  }

  List<ContainerList> _mapPopularContainerList(
      {required List<ContainerList> containerList}) {
    List<ContainerList> containerListFiltered = [];
    containerList.forEach((container) {
      if (container.isPopularThisWeek) {
        containerListFiltered.add(container);
      }
    });
    return containerListFiltered;
  }

  List<ContainerList> _mapContainerListByCategory({
    required List<ContainerList> containerList,
    required int categoryId,
  }) {
    List<ContainerList> containerListFiltered = [];
    containerList.forEach((container) {
      if (container.campaignId == categoryId) {
        containerListFiltered.add(container);
      }
    });
    return containerListFiltered;
  }
}
