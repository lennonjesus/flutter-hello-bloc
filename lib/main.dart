import 'package:flutter/material.dart';
import 'package:flutter_hello_bloc/bloc/bloc_pattern.dart';
import 'package:flutter_hello_bloc/increment/increment-controller.dart';
import 'package:flutter_hello_bloc/increment/increment-widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<IncrementController>(
        child: IncrementWidget(),
        bloc: IncrementController(),
      ),
    );
  }
}
