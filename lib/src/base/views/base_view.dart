import 'package:firebase_fdp/src/features/presentation/main_coordinator/main_coordinator.dart';
import 'package:firebase_fdp/src/features/presentation/states_providers/error_states_provider.dart';
import 'package:firebase_fdp/src/features/presentation/states_providers/loading_status_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/base/views/loading_view.dart';

class BaseView {
  final MainCoordinator coordinator = MainCoordinator();
  final Widget loadingView = const LoadingView();
  final ErrorStateProvider errorStateProvider = ErrorStateProvider();
}

abstract class BaseViewModel {
  late LoadingStateProvider loadingState;
  void initState({required LoadingStateProvider loadingStateProvider});
}
