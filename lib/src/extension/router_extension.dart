part of 'extension.dart';

extension RouterExtension on BuildContext {
  void back<T extends Object?>([T? result]) => router.pop(result);

  void toNamed(String route) => router.pushNamed(route);

  Future<void> push(PageRouteInfo<dynamic> route,
          {void Function(NavigationFailure)? onFailure}) =>
      router.push(route, onFailure: onFailure);

  Future<void> replaceAll(
    List<PageRouteInfo<dynamic>> routes,
  ) =>
      AutoRouter.of(this).replaceAll(routes);
}
