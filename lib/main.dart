import 'package:flutter/material.dart';
import 'Senin.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Basic List',
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/seconds': (BuildContext context) => new SecondScreen(),
      },
    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';
       return new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.map),
              title: new Text('Map'),
                onTap: (){Navigator.of(context).pushNamed("/seconds");}
            ),
            new ListTile(
              leading: new Icon(Icons.photo_album),
              title: new Text('Album'),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new SecondScreen()),
                  );
                }
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text('Phone'),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new SecondScreen()),
                  );
                }
            ),
          ],
        ),
      );
  }
}