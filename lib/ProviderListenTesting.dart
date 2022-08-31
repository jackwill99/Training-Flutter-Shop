import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final Counter _counter = Counter();

  @override
  Widget build(BuildContext context) {
    print('MyHomePage build');
    return ChangeNotifierProvider.value(
      value: _counter,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              ExampleProviderWidget(),
              ExampleConsumerWidget(),
              ExampleNoListenWidget()
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _counter.increment(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class ExampleProviderWidget extends StatelessWidget {
  const ExampleProviderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('ExampleProviderWidget build');
    Counter counter = Provider.of<Counter>(context);

    return Container(
      color: Colors.green,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Provider.of<Counter>(context):'),
            Text(
              '${counter.count}',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
    );
  }
}

class ExampleConsumerWidget extends StatelessWidget {
  const ExampleConsumerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('ExampleConsumerWidget build');
    return Consumer<Counter>(
      builder: (context, counter, _) {
        return Container(
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Consumer<Counter>(context):'),
                Text(
                  '${counter.count}',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ExampleNoListenWidget extends StatelessWidget {
  const ExampleNoListenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('ExampleNoListenWidget build');
    Counter counter = Provider.of<Counter>(context, listen: false);

    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Provider.of<Counter>(context, listen: false):'),
            Text(
              '${counter.count}',
              style: Theme.of(context).textTheme.headline1,
            ),
            RaisedButton(
              child: const Text("Increment"),
              onPressed: () => counter.increment(),
            )
          ],
        ),
      ),
    );
  }
}
