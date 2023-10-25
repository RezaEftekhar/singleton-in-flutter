import 'package:flutter/material.dart';
import 'package:singletonexample/singletonExample.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message = '';

  void updateMessage(String newMessage) {
    setState(() {
      message = newMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    MySingletonExample singleton1 = MySingletonExample();
    MySingletonExample singleton2 = MySingletonExample();
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  updateMessage(singleton1.GetFirstData());
                },
                child: const Text('first data'),
              ),
              ElevatedButton(
                onPressed: () {
                  updateMessage(singleton2.GetSecondtData());
                },
                child: const Text('second data'),
              ),
              const SizedBox(height: 20),
              Text(message),
            ],
          ),
        ),
      ),
    );
  }
}
