import 'package:flutter/material.dart';
import 'package:share/share.dart';

class SecondScr extends StatefulWidget {
  const SecondScr({Key? key}) : super(key: key);

  @override
  _SecondScrState createState() => _SecondScrState();
}

class _SecondScrState extends State<SecondScr> {
  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("YourQuote",style: TextStyle(fontSize: 25),),
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black54,
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(15),
                  height: 150,
                  width: double.infinity,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 150,
                        width: 300,
                        child: Center(
                          child: Text(
                            "${data[index]}",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Share.share(data[index]);
                        },
                        icon: Icon(Icons.share),
                        color: Colors.white,
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
