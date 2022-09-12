import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppPageView extends ConsumerStatefulWidget {
  const AppPageView({
    Key? key,
    required this.children,
    required this.controller,
  }) : super(key: key);

  final StateController<int> controller;
  final List<Widget> children;

  @override
  ConsumerState<AppPageView> createState() => _AppPageViewState();
}

class _AppPageViewState extends ConsumerState<AppPageView> {
  late final cont = widget.controller;
  int index = 0;

  @override
  void initState() {
    cont.addListener((page) {
      setState(() {
        index = page;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    cont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.children[index];
  }
}
