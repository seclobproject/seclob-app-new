import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class invitepage extends StatefulWidget {
  const invitepage({super.key});

  @override
  State<invitepage> createState() => _invitepageState();
}

class _invitepageState extends State<invitepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Invite"),
      ),
    );
  }
}
