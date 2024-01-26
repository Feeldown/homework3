import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PinLoginPage(),
    );
  }
}

class PinLoginPage extends StatefulWidget {
  @override
  _PinLoginPageState createState() => _PinLoginPageState();
}

class _PinLoginPageState extends State<PinLoginPage> {
  String pin = "";

  void _onButtonPressed(String value) {
    setState(() {
      if (value == "Delete") {
        if (pin.length > 0) {
          pin = pin.substring(0, pin.length - 1);
        }
      } else if (value == "Reset") {
        pin = "";
      } else {
        if (pin.length < 6) {
          pin += value;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "PIN Login",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            "${pin.padRight(6, '_')}",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          _buildRow(["1", "2", "3"]),
          _buildRow(["4", "5", "6"]),
          _buildRow(["7", "8", "9"]),
          _buildRow(["Reset", "0", "Delete"]),
        ],
      ),
    );
  }

  Widget _buildRow(List<String> values) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: values
          .map((value) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => _onButtonPressed(value),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0), // Set borderRadius to 0.0 for rectangles
                    ),
                    // You can customize other properties here, like padding, elevation, etc.
                  ),
                  child: value == "1"
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              value,
                              style: TextStyle(fontSize: 18.0),
                            ),
                            Text(
                              "One",
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ],
                        )
                      : value == "2"
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  value,
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                Text(
                                  "Two",
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              ],
                            )
                          : value == "3"
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      value,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                    Text(
                                      "Three",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ],
                                )
                                : value == "4"
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      value,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                    Text(
                                      "Four",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ],
                                )
                                : value == "5"
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      value,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                    Text(
                                      "Five",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ],
                                )
                                : value == "6"
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      value,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                    Text(
                                      "Six",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ],
                                )
                                : value == "7"
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      value,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                    Text(
                                      "Seven",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ],
                                )
                                : value == "8"
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      value,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                    Text(
                                      "Eight",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ],
                                )
                                : value == "9"
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      value,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                    Text(
                                      "Nine",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ],
                                )
                                : value == "0"
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      value,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                    Text(
                                      "Zero",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ],
                                )
                              : Text(value),
                ),
              ))
          .toList(),
    );
  }
}
