import 'package:freezed_annotation/freezed_annotation.dart';

part 'flow.freezed.dart';

/// Provides processing flow with possible result of type [R] or error
/// of type [E].
///
/// If you don't care about the result, you can use `ProcessingState` insted.
@freezed
class Flow<E, R> with _$Flow<E, R> {
  const factory Flow.initial() = FlowInitial;

  const factory Flow.loading() = FlowLoading;

  const factory Flow.failure({E? error}) = FlowFailure;

  const factory Flow.success({R? result}) = FlowSuccess;

  const Flow._();

  bool get isInitial => this is FlowInitial;

  bool get isLoading => this is FlowLoading;

  bool get isFailure => this is FlowFailure;

  bool get isSuccess => this is FlowSuccess;
}
