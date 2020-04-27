import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Button Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Demo(),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            AnimatedButton(
              child: Text(
                'Simple button',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              color: Colors.blue,
              onPressed: () {},
              enabled: true,
              shadowDegree: ShadowDegree.light,
            ),
            AnimatedButton(
              child: Text(
                'Slow animation',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              color: Colors.green,
              onPressed: () {},
              enabled: true,
              shadowDegree: ShadowDegree.light,
              duration: 400,
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
            AnimatedButton(
              child: Text(
                'Simple button',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              color: Colors.blue,
              onPressed: () {},
              enabled: true,
              shadowDegree: ShadowDegree.light,
            ),
            AnimatedButton(
              child: Text(
                'Navigate to another page',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page()));
              },
              width: 300,
              color: Colors.redAccent,
              shadowDegree: ShadowDegree.dark,
              enabled: true,
            ),
            AnimatedButton(
              child: Text(
                'I\'m disabled',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                print(
                    'you won\'t see this message because button is disabled!');
              },
              color: Colors.green,
              enabled: false,
            ),
            AnimatedButton(
              child: Text(
                'Custom height',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {},
              height: 40,
              shadowDegree: ShadowDegree.dark,
              color: Colors.indigo,
            ),
            AnimatedButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                    SizedBox(width: 6),
                    Text(
                      'Add to Cart',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              onPressed: () {},
              shadowDegree: ShadowDegree.light,
              color: Colors.green,
            ),
            AnimatedButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Loading...',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              onPressed: () {},
              shadowDegree: ShadowDegree.light,
              color: Colors.amber[400],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
