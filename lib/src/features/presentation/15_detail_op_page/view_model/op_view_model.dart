import 'package:firebase_fdp/src/features/domain/entities/logisticos/logisticos_entity.dart';
import 'package:firebase_fdp/src/features/domain/entities/op/op_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/op/op_list/op_list_use_case.dart';

enum OpViewState {
  viewLoadedState,
  errorState,
}

abstract class OpViewModelInput {
  Future<OpViewState> viewInitState();
  LogisticosDetailEntity getLogisticos();
  List<OpListDetailEntity> filteredContainerByCategory = [];
}

abstract class OpViewModel extends OpViewModelInput {}

class DefaultOpViewModel extends OpViewModel {
  //Dependencias
  LogisticosDetailEntity logisticos;
  final OpListUseCase _opListUseCase;

  DefaultOpViewModel({required this.logisticos, OpListUseCase? opListUseCase})
      : _opListUseCase = opListUseCase ?? DefaultOpListUseCase();

  @override
  Future<OpViewState> viewInitState() async {
    final opResult =
        await _opListUseCase.fetchOpListByCategory(categoId: logisticos.id);
    filteredContainerByCategory = opResult.opList ?? [];
    return OpViewState.viewLoadedState;
  }

  @override
  LogisticosDetailEntity getLogisticos() {
    return logisticos;
  }
}
