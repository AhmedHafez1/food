import 'package:flutter/material.dart';

class AhSliverAppBar extends StatelessWidget {
  final Widget title;
  final Widget child;

  const AhSliverAppBar({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text('Sunset Diner'),
      floating: false,
      pinned: true,
      expandedHeight: 340,
      collapsedHeight: 120,
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        background: child,
        centerTitle: true,
        expandedTitleScale: 1,
        titlePadding: const EdgeInsets.all(5),
      ),
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
      ],
    );
  }
}
