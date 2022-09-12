part of 'helper.dart';

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    if (newValue is StateController<int>) {
      debugPrint(
          '[${provider.name ?? provider.runtimeType}] value: ${newValue.state}');
    }
  }
}
