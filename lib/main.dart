// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unnecessary_overrides, unused_import
import 'package:bb_project/modules/estoque/bloc/estoque_bloc.dart';
import 'package:bb_project/modules/estoque/estoque_home_page.dart';
import 'package:bb_project/modules/usu%C3%A1rios/usuario_home_page.dart';
import 'package:bb_project/modules/vendas/vendas_home_page.dart';
import 'package:bb_project/widgets/bottom_navigator_bar.dart';
import 'package:bb_project/widgets/formulario_de_estoque.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      child: ((contextVendas) => const VendasPage()),
      transition: TransitionType.noTransition,
    );

    r.child(
      "/estoque",
      child: (contextEstoque) => BlocProvider<EstoqueBloc>(
        create: (_) => EstoqueBloc(),
        child: const EstoquePage(),
      ),
      transition: TransitionType.noTransition,
    );

    r.child(
      "/usuario",
      child: (contextUsuario) => const UsuarioPage(),
      transition: TransitionType.noTransition,
    );

    r.child(
      "/estoqueformulario",
      child: (_) => BlocProvider(
        create: (_) => EstoqueBloc(),
        child: const CustomCardForm(),
      ),
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
