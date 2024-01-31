import 'dart:async';

import 'package:azrc_demos/enums/enums.dart';
import 'package:flutter/material.dart';

class OtherStream extends StatefulWidget {
  const OtherStream({super.key});

  @override
  State<OtherStream> createState() => _OtherStreamState();
}

class _OtherStreamState extends State<OtherStream> {
  final streamClass = MySteamClass();
  StreamController<MyState> get controller => streamClass.controller;
  final numberStreamController = StreamController<int>();
  @override
  void initState() {
    streamClass.begin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: controller.stream.transform(streamClass._streamTranformer),
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
}

enum MyState { Initial, Loading, Success }

class MySteamClass {
  final controller = StreamController<MyState>();

  final _streamTranformer = StreamTransformer<MyState, int>.fromHandlers(
    handleData: (data, sink) {
      switch (data) {
        case MyState.Initial:
          sink.add(-1);
        case MyState.Loading:
          sink.add(0);
        case MyState.Success:
          sink.add(1);
      }
    },
  );

  begin() async {
    controller.add(MyState.Initial);
    await Future.delayed(Duration(seconds: 2));
    controller.add(MyState.Loading);
    await Future.delayed(Duration(seconds: 2));
    controller.add(MyState.Success);
  }
}
