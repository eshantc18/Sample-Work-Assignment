// packages used
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// driver function main
void main() {
  // Allows only portrait mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // starts the application
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      // removes the debug banner
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // displays the title "Sample Work" in center
          centerTitle: true,
          title: const Text("Sample Work"),
        ),
        // LayoutBuilder is used to make application responsive instead of MediaQuery
        body: LayoutBuilder(
          // gives constraints of the screen at the layout time
          builder: ((context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // widgets under column start from left
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // "SizedBox" is used instead of "Padding" widget to allot spacing
                // to have consistent spacing over all devices
                SizedBox(
                  height: constraints.maxHeight * 0.03,
                ),
                Container(
                  // gives available width of the screen
                  width: double.infinity,
                  child: Card(
                    elevation: 11,
                    color: Colors.redAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // "SizedBox" is used instead of "Padding" widget to allot spacing
                        // to have consistent spacing over all devices
                        SizedBox(
                          height: constraints.maxHeight * 0.02,
                        ),
                        Row(
                          children: [
                            // "SizedBox" is used instead of "Padding" widget to allot spacing
                            // to have consistent spacing over all devices
                            SizedBox(
                              width: constraints.maxWidth * 0.02,
                            ),
                            Container(
                              width: constraints.maxWidth * 0.7,
                              height: constraints.maxHeight * 0.05,
                              color: Colors.grey,
                            ),
                          ],
                        ),

                        // "SizedBox" is used instead of "Padding" widget to allot spacing
                        // to have consistent spacing over all devices
                        SizedBox(
                          height: constraints.maxHeight * 0.03,
                        ),
                        Row(
                          children: [
                            // "SizedBox" is used instead of "Padding" widget to allot spacing
                            // to have consistent spacing over all devices
                            SizedBox(
                              width: constraints.maxWidth * 0.02,
                            ),
                            Container(
                              width: constraints.maxWidth * 0.9,
                              height: constraints.maxHeight * 0.05,
                              color: Colors.greenAccent,
                            ),
                          ],
                        ),

                        // "SizedBox" is used instead of "Padding" widget to allot spacing
                        // to have consistent spacing over all devices
                        SizedBox(
                          height: constraints.maxHeight * 0.02,
                        ),
                      ],
                    ),
                  ),
                ),

                // "SizedBox" is used instead of "Padding" widget to allot spacing
                // to have consistent spacing over devices
                SizedBox(
                  height: constraints.maxHeight * 0.05,
                ),
                // Stack is used to have overlap of widgets in bottom top fashion
                Stack(
                  children: [
                    Container(
                      // gives available width of the screen
                      width: double.infinity,
                      // "Padding" is refactored around "Card" widget in order to have a shift from top of stack
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            0, constraints.maxHeight * 0.04, 0, 0),
                        child: Card(
                          color: Colors.redAccent,
                          elevation: 11,
                          //
                          child: Column(
                            children: [
                              // "SizedBox" is used instead of "Padding" widget to allot spacing
                              // to have consistent spacing over all devices
                              SizedBox(
                                height: constraints.maxHeight * 0.08,
                              ),
                              Row(
                                children: [
                                  // "SizedBox" is used instead of "Padding" widget to allot spacing
                                  // to have consistent spacing over all devices
                                  SizedBox(
                                    width: constraints.maxWidth * 0.02,
                                  ),
                                  Container(
                                    width: constraints.maxWidth * 0.9,
                                    height: constraints.maxHeight * 0.05,
                                    color: Colors.greenAccent,
                                  ),
                                ],
                              ),

                              // "SizedBox" is used instead of "Padding" widget to allot spacing
                              // to have consistent spacing over all devices
                              SizedBox(
                                height: constraints.maxHeight * 0.02,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // "Align" widget is used to set top widget of "Stack" to 'topcenter'
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            constraints.maxWidth * 0.01,
                            constraints.maxHeight * 0.02,
                            constraints.maxWidth * 0.01,
                            0),
                        child: Container(
                          width: constraints.maxWidth * 0.7,
                          height: constraints.maxHeight * 0.06,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
