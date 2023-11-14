import 'package:bb_project/widgets/bottom_navigator_bar.dart';
import 'package:flutter/material.dart';

class Storage extends StatelessWidget {
  const Storage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Black Bird Estoque")),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.5,
          color: Colors.white,
        ),
      ),
    );
  }
}
