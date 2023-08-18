import 'package:flutter_application_1/features/car/view/car_screen.dart';
import 'package:flutter_application_1/features/main_list/main_list.dart';
import 'package:flutter_application_1/features/mark_list/view/view.dart';

final routes = {
  '/': (context) => const MainScreen(),
  '/mark': (context) => const MarkListScreen(),
  '/mark/car': (context) => const CarScreen(),
};
