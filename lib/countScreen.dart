import 'package:flutter/material.dart';
import 'package:my_app/stateclass.dart';
import 'package:provider/provider.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<MyProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Counter with Provider',
          style: TextStyle(fontSize: 20, color: Colors.white),
        )),
        backgroundColor: Colors.blue,
      ),
      body: Consumer<MyProvider>(builder: (context, value, child) {
        return Center(
            child: Text(
          value.count.toString(),
          style: TextStyle(fontSize: 40),
        ));
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countprovider.incrementCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
