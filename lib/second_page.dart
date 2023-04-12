// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("second Page"),
      ),
      body: Center(
        child: Image.network(
            "https://thumb.tildacdn.com/tild6136-3035-4564-a639-316161373936/-/resize/320x/-/format/webp/500004.png"),
      ),
    );
  }
}
