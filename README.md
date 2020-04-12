# wave_drawer
[![pub package](https://img.shields.io/badge/pub-0.5.5-orange.svg)](https://pub.dartlang.org/packages/wave_drawer)

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/calamity210)


Wave Drawer is an easy way to create stunning app drawer with a bezier curve boundary. Animated bezier curves are coming soon!

## Installing
Add this to your package's pubspec.yaml file:
```dart
dependencies:
  wave_drawer: "^0.0.1"
```
## Demo
<div align="center">
  <table><tr>
 <td style="text-align:center">
  <img width="250px"  src="https://github.com/aayanraja210/wave_drawer/raw/master/assets/img/example5.1.gif?" />
 </td>
 </tr></table>
</div>


### Simple usage
```dart
import 'package:flutter_wave_drawer/wave_drawer.dart';
.
.
.
   
    @override
    Widget build(BuildContext context)
    {
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

```

### WaveDrawer Parameters
|PropName|Description|default value|
|:-------|:----------|:------------|
|`width`|*Width of the Drawer*|90%|
|`backgroundColor`|*Drawer Background Color*|required|
|`backgroundColorOpacity`|*Background Color's Opacity*|0.5|
|`boundaryColor`|*Color of Wave Paint*|required|
|`boundaryWidth`|*Width of Wave Paint*|required|
|`elevation`|*The Z-coordinate at Which to Place this Drawer*|16|
|`child`|*Widget Within the Drawer*|optional|
|`semanticLabel`|*The Semantic Label to Announce Screen Transitions when the Drawer is Opened and Closed*|MaterialLocalizations.drawerLabel|

## Donate
If you found this project helpful or you learned something from the source code and want to thank me: 
- [![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/calamity210)

## Issues
If you encounter problems, open an issue. Pull request are also welcome.