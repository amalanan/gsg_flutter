import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => CounterState();
}

class CounterState extends State<Counter> {
  int _counter = 0;
  String counterKey = 'counter';

  @override
  void initState() {
    super.initState();
    readCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _counter--;
                      saveCounter(_counter);
                    });
                  },
                  child: Text(_counter.toString()),
                ),
                Text(
                  _counter.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _counter++;
                      saveCounter(_counter);
                    });
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  saveCounter(int counter) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(counterKey, counter);
  }

  readCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = prefs.getInt(counterKey) ?? 0;
    });
  }
}
