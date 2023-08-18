import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/main_list/widgets/widgets.dart';
import 'package:flutter_application_1/config/config.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Config config = Config();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CarHub'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: config.getCarsName.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {
          final carName = config.getCarsName[i];
          return MainTile(carName: carName);
        },
      ),
    );
  }
}
