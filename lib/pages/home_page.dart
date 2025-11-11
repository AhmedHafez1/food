import 'package:flutter/material.dart';
import 'package:food_delivery/components/ah_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.tertiary),
      drawer: AhDrawer(),
    );
  }
}
