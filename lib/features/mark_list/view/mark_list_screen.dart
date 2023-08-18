import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/mark_list/widgets/widgets.dart';
import 'package:flutter_application_1/config/config.dart';

class MarkListScreen extends StatefulWidget {
  const MarkListScreen({super.key});

  @override
  State<MarkListScreen> createState() => _MarkListScreenState();
}

class _MarkListScreenState extends State<MarkListScreen> {
  Config config = Config();
  String? carName;

  int lengthCount() {
    int? count;
    if (carName == 'Toyota') {
      count = config.getToyotaName.length;
    } else if (carName == 'Lada') {
      count = config.getLadaName.length;
    } else if (carName == 'BMW') {
      count = config.getBmwName.length;
    }
    return count ?? 0;
  }

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'You mat provide string args');
    carName = args as String;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(carName ?? '...')),
      body: ListView.separated(
        itemCount: lengthCount(),
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {
          // ignore: prefer_typing_uninitialized_variables
          var markName;
          if (carName == 'Toyota') {
            markName = config.getToyotaName[i];
          } else if (carName == 'Lada') {
            markName = config.getLadaName[i];
          } else if (carName == 'BMW') {
            markName = config.getBmwName[i];
          }
          return MarkTitle(markName: markName);
        },
      ),
    );
  }
}
