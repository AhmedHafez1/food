import 'package:flutter/material.dart';
import 'package:food_delivery/components/ah_drawer.dart';
import 'package:food_delivery/components/ah_sliver_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AhDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (_, _) => [
          AhSliverAppBar(
            title: Text('Title Widget'),
            child: Text('Child Widget'),
          ),
        ],
        body: Container(color: Colors.purple),
      ),
    );
  }
}
