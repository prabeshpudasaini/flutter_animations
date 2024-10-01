import 'package:flutter/material.dart';
import 'package:flutter_animation/3d_animation/three_dimensional_animation_view.dart';
import 'package:flutter_animation/3d_drawer/drawer_view.dart';
import 'package:flutter_animation/animated_prompt/animated_prompt_view.dart';
import 'package:flutter_animation/basic_animation/basic_animation_view.dart';
import 'package:flutter_animation/chained_explicit_animations/chained_explicit_animations_view.dart';
import 'package:flutter_animation/custom_painter/custom_painter_view.dart';
import 'package:flutter_animation/hero_animation/hero_animation_view.dart';
import 'package:flutter_animation/implicit_animation/implicit_animation_view.dart';
import 'package:flutter_animation/tween_animation/tween_animation_view.dart';

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
          Card(
            child: ListTile(
              title: const Text('Hero Animation'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const HeroAnimationView();
                  },
                ));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Implicit Animation'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const ImplicitAnimationView();
                  },
                ));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Tween Animation'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const TweenAnimationView();
                  },
                ));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Custom Painter Animation'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const CustomPainterView();
                  },
                ));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('3D Drawer'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const DrawerView();
                  },
                ));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Animated Prompt'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const AnimatedPromptView();
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
