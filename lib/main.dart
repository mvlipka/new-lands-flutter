import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_lands_flutter/campaigns.dart';
import 'package:new_lands_flutter/editor.dart';
import 'package:new_lands_flutter/navbar.dart';

void main() {
  runApp(NewLandsApp());
}

class NewLandsApp extends StatelessWidget {
  NewLandsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'New Lands',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    )
  ]);
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Navbar(),
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                debugPrint("TAPPED");
              },
              child: const SizedBox(
                width: 300,
                  height: 100,
                  child: Text('Hello World'),
              ),
            )
          ),
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                debugPrint("TAPPED");
              },
              child: const SizedBox(
                width: 300,
                  height: 100,
                  child: Text('Hello World'),
              ),
            )
          ),
        ],
      ),
    );
  }
}
