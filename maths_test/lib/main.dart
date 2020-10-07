import 'package:flutter/material.dart';
import 'package:mathematics/mathematics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Package Demo: mathematics'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String answer = '';
  String answer2 = '';
  final textController = TextEditingController();
  final arrayFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: TextFormField(
                controller: textController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter number'),
              ),
              subtitle: Text('Answer is: $answer'),
            ),
            Row(
              children: [
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      if (textController.text.isEmpty) return;
                      setState(() {
                        answer =
                            Cube.getSquareOf(int.parse(textController.text))
                                .toString();
                      });
                    },
                    child: Text('Get Sqaure'),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      if (textController.text.isEmpty) return;
                      setState(() {
                        answer = Cube.getCubeOf(int.parse(textController.text))
                            .toString();
                      });
                    },
                    child: Text('Get Cube'),
                  ),
                ),
              ],
            ),
            ListTile(
              title: TextFormField(
                controller: arrayFieldController,
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: 'Enter comma separated numbers'),
              ),
              subtitle: Text('Answer is: $answer2'),
            ),
            Row(
              children: [
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      if (arrayFieldController.text.isEmpty) return;
                      setState(() {
                        List<String> list = arrayFieldController.text
                            .replaceAll(' ', '')
                            .replaceAll(',,', ',')
                            .split(',');
                        print(list);
                        answer2 = Cube.getHighestNumber(list).toString();
                      });
                    },
                    child: Text('Find highest'),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      if (arrayFieldController.text.isEmpty) return;
                      setState(() {
                        List<String> list = arrayFieldController.text
                            .replaceAll(' ', '')
                            .replaceAll(',,', ',')
                            .split(',');
                        print(list);
                        answer2 = Cube.getLowestNumber(list).toString();
                      });
                    },
                    child: Text('Find loswest'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
