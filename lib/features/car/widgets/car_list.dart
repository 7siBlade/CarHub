import 'package:flutter/material.dart';

class CarListView extends StatefulWidget {
  const CarListView({
    super.key,
  });

  @override
  State<CarListView> createState() => _CarListViewState();
}

class _CarListViewState extends State<CarListView> {
  String? markName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'You mat provide string args');
    markName = args as String;
    setState(() {});
    debugPrint(markName);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Center(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKk5z9WFAaDwCTRlyFefjRyi5fFZp0EFY75LEnWDT3&s',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width / 1.1,
              ),
            ),
            const Center(
              child: Text(
                'Supra A90\n',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const Text(
                'Toyota Supra — серийный спортивный автомобиль, выпускающийся компанией Toyota с 1978 года.\n'),
            const Text(
                'Дизайн Supra был перенят от Toyota Celica, но кузов стал длиннее и шире. Начиная с середины 1986 года, Supra отделилась от Celica, став самостоятельной моделью. В связи с этим Toyota перестала использовать префикс Celica, и автомобиль стал именоваться просто Supra. Первое, второе и третье поколения Supra собирались на заводе в Тахаре, а четвёртое и пятое поколение — на заводе в городе Тоёта в Японии.'),
          ],
        );
      },
    );
  }
}