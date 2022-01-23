import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import the package and the provider
import 'package:provider/provider.dart';
import '../providers/count_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          // how to read dthe data
          middle: Text('Home screen count ${context.watch<Count>().count}'),
          backgroundColor: Colors.white,
        ),
        child: Scaffold(
            body: Center(
              child: Text('Count is now: ${context.watch<Count>().count}'),
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: FloatingActionButton(
                    child: const Icon(CupertinoIcons.minus),
                    onPressed: () {
                      context.read<Count>().updateValue(x: -1);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: FloatingActionButton(
                    child: const Text('0'),
                    onPressed: () {
                      // access the methods
                      context.read<Count>().reset();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: FloatingActionButton(
                    child: const Icon(CupertinoIcons.add),
                    onPressed: () {
                      context.read<Count>().updateValue(x: 1);
                    },
                  ),
                ),
              ],
            )));
  }
}
