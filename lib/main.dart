import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: Temel(),
      theme: ThemeData(primarySwatch: Colors.green),
    ));

class Temel extends StatefulWidget {
  @override
  _TemelState createState() => _TemelState();
}

class _TemelState extends State<Temel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inkwell"),
      ),
      body: Center(
        child: InkWell(
          splashColor: Colors.yellow,
          onTap: () {
            print("Tıklandı");
          },
          onLongPress: () {
            print("Uzun Basıldı.");
          },
          onDoubleTap: () {
            showDialogGoster(context);
          },
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              border: Border.all(width: 5),
            ),
            child: Center(
              child: Text("Tıkla"),
            ),
          ),
        ),
      ),
    );
  }
}

void showDialogGoster(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Mesaj Başlığı"),
          content: Text("Mesaj İçerik"),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Kapat"))
          ],
        );
      });
}
