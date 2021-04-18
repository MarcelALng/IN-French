import 'package:flutter/material.dart';
import 'package:infrench2021_2/screens/components/menu_component.dart';

import 'components/appbar_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent.build(),
      drawer: MenuComponent(), // need appbar to show, and add hamburger menu
    );
  }
}
