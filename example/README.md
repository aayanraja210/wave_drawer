# Example Wave Drawer

An example of how you could implement Wave Drawer.

## Getting Started - Wave Drawer

```dart
import 'package:flutter/material.dart';
import 'package:wave_drawer/wave_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wave Drawer Demo',
      debugShowCheckedModeBanner:  false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WaveDrawerExample(),
    );
  }
}

class WaveDrawerExample extends StatefulWidget {
  @override
  _WaveDrawerExampleState createState() => _WaveDrawerExampleState();
}

class _WaveDrawerExampleState extends State<WaveDrawerExample> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF4E5B81),
        title: Text("Wave Drawer Example"),
      ),
      drawer: WaveDrawer(
        backgroundColor: Color(0XFF4E5B81),
        boundaryColor: Colors.blue,
        boundaryWidth: 8.0,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Drawer Header',
                style: Theme.of(context).primaryTextTheme.title,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text(
                'Item 1',
                style: Theme.of(context).primaryTextTheme.subtitle,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2',
                style: Theme.of(context).primaryTextTheme.subtitle,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Center(child: Icon(Icons.add)),
          onPressed: () => _incrementCount()),
      body: Container(
          color: Color(0XFF27314F),
          child: Center(child: Text('You tapped the button $_count times'))),
    );
  }
}
```

## Other
This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.