import 'package:animated_button/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Button Demo',
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedButton(
              onPressed: () {},
              color: Colors.blue,
              enabled: true,
              disabledColor: Colors.grey,
              shadowDegree: ShadowDegree.light,
              borderRadius: 8,
              duration: 85,
              height: 40,
              width: 120,
              child: Text(
                'Simple button',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 24),
            AnimatedButton(
              child: Text(
                'Slow animation',
                style: TextStyle(
                  fontSize: 14,
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
            SizedBox(height: 24),
            AnimatedButton(
              child: Text(
                'Custom Radius',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              color: Colors.blue,
              onPressed: () {},
              enabled: true,
              borderRadius: 25,
              shadowDegree: ShadowDegree.light,
            ),
            SizedBox(height: 24),
            AnimatedButton(
              child: Text(
                'I\'m disabled',
                style: TextStyle(
                  fontSize: 14,
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
            SizedBox(height: 24),
            AnimatedButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      CupertinoIcons.cart,
                      color: Colors.white,
                      size: 18,
                    ),
                    SizedBox(width: 6),
                    Text(
                      'Add to Cart',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              onPressed: () {},
              shadowDegree: ShadowDegree.light,
              color: Colors.red,
            ),
            SizedBox(height: 24),
            AnimatedButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        strokeWidth: 2,
                      ),
                    ),
                    Text(
                      'Loading...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              onPressed: () {},
              color: Colors.amber,
              disabledColor: Colors.amber,
              enabled: false,
              shadowDegree: ShadowDegree.light,
            )
          ],
        ),
      ),
    );
  }
}
