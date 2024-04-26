import 'package:flutter/material.dart';
import 'package:temp/another_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _moveToAnotherPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const AnotherPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ...List.generate(
              10,
              (index) => Column(
                children: [
                  Text(
                    'Test',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () => {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(content: Text('Dialog'));
                        },
                      )
                    },
                child: const Text(
                    'This button won\'t work, but Floating button will work.')),
            ...List.generate(
              10,
              (index) => Column(
                children: [
                  Text(
                    'Test',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _moveToAnotherPage,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text('Move'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
