import 'package:flutter/material.dart';

void main() {
  runApp(FlutterTest());
}

class FlutterTest extends StatelessWidget {
  FlutterTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "FLUTTER",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30.0,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: Center(
                child: Text(
                  "Сиз Flutter ди уйроно турган ойунуз барбы?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (() {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return AlertDialog(
                            backgroundColor: Colors.green,
                            title: Text(
                              "Азаматсыз!",
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        }));
                  }),
                  child: Container(
                    height: 80.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        "Ооба",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 25.0),
                InkWell(
                  onTap: (() {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return AlertDialog(
                            backgroundColor: Colors.red,
                            title: Text(
                              "Анда жон эле койун!",
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        }));
                  }),
                  child: Container(
                    height: 80.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        "Жок",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
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
