import 'dart:async';

import 'package:azrc_demos/enums/enums.dart';
import 'package:flutter/material.dart';

class Streams extends StatefulWidget {
  const Streams({super.key});

  @override
  State<Streams> createState() => _StreamsState();
}

class _StreamsState extends State<Streams> {
  final numberStreamController = StreamController<int>();
  @override
  void initState() {
    addMyNumber();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: numberStreamController.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text(snapshot.data.toString()),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  void addMyNumber() async {
    String a="sdsa";
    for (var i = 0; i < 100; i++) {
      await Future.delayed(const Duration(milliseconds: 500));
      numberStreamController.add(i);
    }
    switch (a) {
      case DesignColors.Blue:
        
        break;
      default:
    }
  }
}
