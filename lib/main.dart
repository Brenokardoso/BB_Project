// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unnecessary_overrides

import 'package:bb_project/pages/cadastro.dart';
import 'package:bb_project/pages/estoque.dart';
import 'package:bb_project/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(
    module: ManagementRouter(),
    child: RootManagement(),
  ));
}

class ManagementRouter extends Module {
  @override
  void binds(Injector i) {
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const HomePage(),
      transition: TransitionType.noTransition,
    );
    r.child(
      "/storage",
      child: (storage) => const Storage(),
      transition: TransitionType.noTransition,
    );
    r.child(
      "/cadastro",
      child: (_) => const Cadastro(),
      transition: TransitionType.noTransition,
    );
    super.routes(r);
  }
}

class RootManagement extends StatelessWidget {
  RootManagement({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Black Bird",
      theme: ThemeData.dark(),
      routerConfig: Modular.routerConfig,
      debugShowCheckedModeBanner: false,
    );
  }
}
