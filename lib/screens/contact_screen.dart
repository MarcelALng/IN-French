import 'package:flutter/material.dart';
import 'package:infrench2021_2/screens/components/appbar_component.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent.build(),
    );
  }
}
