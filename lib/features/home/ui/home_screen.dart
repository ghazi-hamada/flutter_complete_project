import 'package:flutter/material.dart';
import 'package:flutter_complete_project/features/home/ui/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        body: SafeArea(
            child: Container(
          color: Colors.red,
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            children: [HomeTopBar()],
          ),
        )));
  }
}
