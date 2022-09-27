import 'package:riverpod/riverpod.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didAddProvider(ProviderBase provider, Object? value, ProviderContainer container) {
    print('''"didAddProvider": "${provider.name ?? provider.runtimeType}"''');
    super.didAddProvider(provider, value, container);
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer containers) {
    print('''"didDisposeProvider": "${provider.name ?? provider.runtimeType}"''');
    super.didDisposeProvider(provider, containers);
  }
}
