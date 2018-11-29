import 'package:flutter/material.dart';
import 'package:flutter_hello_bloc/bloc/bloc_pattern.dart';
import 'package:flutter_hello_bloc/increment/increment-controller.dart';

class IncrementWidget extends StatefulWidget {
  @override
  _IncrementWidgetState createState() => _IncrementWidgetState();
}

class _IncrementWidgetState extends State<IncrementWidget> {
  @override
  Widget build(BuildContext context) {
    final IncrementController bloc =
        BlocProvider.of<IncrementController>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter with Bloc Pattern'),
        ),
        body: Center(
          child: StreamBuilder(
            initialData: 0,
            stream: bloc.outCounter,
            builder: (BuildContext builder, AsyncSnapshot snapshot) {
              return Text('${snapshot.data}');
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: bloc.increment,
        ));
  }
}
