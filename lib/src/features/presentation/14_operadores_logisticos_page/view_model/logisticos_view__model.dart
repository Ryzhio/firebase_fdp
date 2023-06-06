import 'package:firebase_fdp/src/features/domain/entities/logisticos/logisticos_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/logisticos/logisticos_use_case.dart';

enum LogisticosViewModelState {
  viewLoadedState,
  errorState,
}

abstract class LogisticosViewModelInput {
  Future<LogisticosViewModelState> viewInitState();
  List<LogisticosDetailEntity> logisticos = [];
}

abstract class LogisticosViewModel extends LogisticosViewModelInput {}

class DefaultLogisticosViewModel extends LogisticosViewModel {
  //DEPENDENCIAS
  final FetchLogisticosUseCase _fetchLogisticosUseCase;

  DefaultLogisticosViewModel({FetchLogisticosUseCase? fetchLogisticosUseCase})
      : _fetchLogisticosUseCase =
            fetchLogisticosUseCase ?? DefaultFetchLogisticosUseCase();

  @override
  Future<LogisticosViewModelState> viewInitState() async {
    final logisticosResponse = await _fetchLogisticosUseCase.execute();
    logisticos = logisticosResponse.logisticos ?? [];

    if (logisticos.isNotEmpty) {
      return LogisticosViewModelState.viewLoadedState;
    } else {
      return LogisticosViewModelState.errorState;
    }
  }
}
