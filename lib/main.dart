import 'package:flutter/material.dart';
import 'package:stacked_template/ui/screens/main/main.dart';

import 'app/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(MainApp());
}
