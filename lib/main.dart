import 'package:flutter/material.dart';
import 'package:helloflutter/responesive/MobileScreenLayout.dart';
import 'package:helloflutter/responesive/WebScreenLayout.dart';
import 'package:helloflutter/responesive/responesive_layout_screen.dart';
import 'package:helloflutter/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context),
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
              title: const Text("Hello Flutter",
                  style: TextStyle(decoration: TextDecoration.none))),
          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                  width: 190.0,
                  height: 190.0,
                  decoration: const BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              AssetImage("assets/images/0153_-_WlHOCzS.jpg"))),
                ),
                 const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your password',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    MyButtonStatefulWidget()
                  ],
                )
              ],
            ),
          )),
    );
  }
}
class MyButtonStatefulWidget extends StatefulWidget {
  const MyButtonStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyButtonWidgetState createState() => _MyButtonWidgetState();
}
class _MyButtonWidgetState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: style,
              onPressed: (){},
              child: const Text('Sign up'),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: style,
              onPressed: () {},
              child: const Text('Sign in'),
            ),
          ),
        ],
      ),
    );
  }

}
