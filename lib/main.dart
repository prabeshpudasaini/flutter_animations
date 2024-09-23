import 'package:flutter/material.dart';
import 'package:flutter_animation/3d_animation/three_dimensional_animation_view.dart';
import 'package:flutter_animation/basic_animation/basic_animation_view.dart';
import 'package:flutter_animation/chained_explicit_animations/chained_explicit_animations_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,

      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Animation'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: const Text('Basic Animation'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const BasicAnimationView();
                  },
                ));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Chained Explicit Animation'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const ChainedExplicitAnimationsView();
                  },
                ));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('3D Animation'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const ThreeDimensionalAnimationView();
                  },
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
